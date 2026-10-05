import re
import os

def extract_states_from_cns(cns_path):
    """Scans a given .cns file and extracts Statedefs along with internal State controllers."""
    if not os.path.exists(cns_path):
        return []
        
    with open(cns_path, 'r', encoding='utf-8', errors='ignore') as f:
        lines = f.readlines()

    parsed_data = []
    current_statedef = None
        
    for i, line in enumerate(lines):
        # Check for a main state definition (i.e. [Statedef 111])
        match = re.search(r'^\s*\[\s*Statedef\s+([-]?\d+)\s*\]', line, re.IGNORECASE)
        if match:
            state_num = match.group(1)
            state_name = "Custom Move/State"
            state_note = "—"
            
            # Scan upwards for comments (checks up to 5 lines above)
            for j in range(i - 1, max(-1, i - 6), -1):
                prev_line = lines[j].strip()
                if prev_line.startswith(';') and not prev_line.startswith(';---'):
                    potential_text = prev_line.lstrip(';').strip()
                    if potential_text:
                        if "//" in potential_text:
                            parts = potential_text.split("//", 1)
                            state_name = parts[0].strip()
                            state_note = parts[1].strip()
                        else:
                            state_name = potential_text
                        break

            # save new state block and collect inner states
            current_statedef = {
                "num": state_num,
                "name": state_name,
                "note": state_note,
                "controllers": []
            }

            parsed_data.append(current_statedef)
            continue

        # Check for inner controller [State 200, Play Snd] while inside a Statedef box
        if current_statedef:
            state_match = re.search(r'^\s*\[\s*State\s+([^\]]+)\]', line, re.IGNORECASE)
            if state_match:
                controller_header = state_match.group(1).strip()
                controller_type = "UnknownType"
                detected_value = ""
                inline_comment = ""

                # Scan downwards for "type = X" parameter (checks up to 12 lines below)
                for k in range(i + 1, min(len(lines), i + 13)):
                    inner_line = lines[k].strip()
                    # if we enter a new block, stop looking
                    if inner_line.startswith('['):
                        break
                    # Extract the type
                    type_match = re.search(r'^\s*type\s*=\s*([a-zA-Z0-9_]+)', inner_line, re.IGNORECASE)
                    if type_match:
                        controller_type = type_match.group(1)
                        
                    # Extract the value parameter if it exists
                    value_match = re.search(r'^\s*value\s*=\s*([^;\n]+)', inner_line, re.IGNORECASE)
                    if value_match:
                        detected_value = value_match.group(1).strip()

                    # Capture any inline comment on a 'value =' line or a 'type =' line
                    if ("value" in inner_line or "type" in inner_line) and ";" in inner_line:
                        comment_part = inner_line.split(";", 1)[1].strip()
                        if comment_part:
                            inline_comment = comment_part

                # Description Builder
                description = f"Executes `{controller_type}` routine."
                if controller_type.lower() == "changestate" and detected_value:
                    description = f"Redirects player to **State {detected_value}**"
                    if inline_comment:
                        description += f" (*{inline_comment}*)"
                elif controller_type.lower() == "playsnd" and detected_value:
                    description = f"Plays sound asset: `{detected_value}`"
                    if inline_comment:
                        description += f" (*{inline_comment}*)"
                elif inline_comment:
                    # fallback: show the inline comment if one was found anywhere in the block 
                    description = inline_comment

                # save subcontroller entry
                current_statedef["controllers"].append({
                    "header": controller_header,
                    "type": controller_type,
                    "desc": description
                })

    return sorted(parsed_data, key=lambda x: int(x["num"]))

def generate_character_wiki_page(char_name, state_tree, output_dir="docs"):
    """Creates a dedicated, standalone markdown file for an individual character."""
    os.makedirs(output_dir, exist_ok=True)
    
    # Cleans the file name format (e.g., "KFM.cns" -> "docs/kfm-state-reference.md")
    clean_title = char_name.lower().replace(".cns", "")
    filename = f"{clean_title}-state-reference.md"
    file_path = os.path.join(output_dir, filename)
    
    # Construct page data
    markdown_lines = [
        f"# {clean_title.upper()} — Character State Reference\n\n",
        f"> [!NOTE]\n",
        f"> This reference page is auto-generated directly from `{char_name}`. Do not edit manually.\n\n",
        "| State Number | Name / Input | Additional Notes |\n",
        "| :--- | :--- | :--- |\n"
    ]

    for state in state_tree:
        # insert main Statedef row
        markdown_lines.append(f"| **`[Statedef {state['num']}`** | **{state['name']}** | {state['note']} |\n")
        # insert nested state controllers as bullet points inside the sub-rows
        for ctrl in state["controllers"]:
            markdown_lines.append(f"| └── *`{ctrl['header']}`* | `type = {ctrl['type']}` | {ctrl['desc']} |\n")
        
    markdown_lines.append("\n***\n[<-Back to Wiki Home](Home)\n")
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.writelines(markdown_lines)
    print(f"Generated Wiki Page: {file_path}")

if __name__ == "__main__":

    # Scan the whole project workspace for any character .cns files
    print("Scanning project directories for character .cns files...")
    cns_files_found = 0
    
    for root, dirs, files in os.walk("."):
        # Ignore systemic dotfiles or github action runners
        if ".github" in root or ".git" in root or "docs" in root:
            continue
            
        for f in files:
            if f.lower().endswith(".cns"):
                cns_path = os.path.join(root, f)
                extracted_states = extract_states_from_cns(cns_path)
                
                if extracted_states:
                    # 'f' is just the filename (e.g. "COMMON.cns" or "KFM.cns")
                    generate_character_wiki_page(f, extracted_states)
                    cns_files_found += 1
                    
    if cns_files_found == 0:
        print("Warning: No valid .cns data files were detected in the project.")