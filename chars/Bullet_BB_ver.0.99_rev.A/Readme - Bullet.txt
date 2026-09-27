Any question, concerns, and feedback, check the link below to my
project thread. You can also PM me here in this site.

http://mugenguild.com/forum/topics/ares-project-thread-146152.0.html

My user name is: Seraphs Ares
I recommend downloading this character at Mugen Guild or Mugen Free
For All.
My character may not be updated to the latest version.

Also, I'll say many fighting terms here in the readme.txt.
Here's a link if you're wondering what I'm talking about.
http://en.wiktionary.org/wiki/Appendix:Fighting_game_terms

=========================Switching Voice Dub=========================
1) Open Bullet_option.txt.
2) Scroll down or CTRL+F to find var(56).
3) Enter 0 for Japanese Dub. Enter 1 for English Dub.

===============================WARNING===============================
This character is created for Mugen 1.0.
Using this character in older versions in MUGEN may result in error
or MUGEN crashing.

It is recommended to use GameWidth = 1280 and GameHeight = 720 in
mugen.cfg. Should you use any lower GameWidth and GameHeight please
change the character's localcoord, located in the .def file, and
use the value of 941,554. In the _option.txt file change the value of
var(49) to be 1.

It is NOT recommended to fight against this character with non-Arc
System Works characters.

===============================Commands==============================
x = A
y = B
b = C
a = D
z or y+b = Throw
c = Rapid Cancel
x+y = Crush Trigger (Guard Break)

[Revolver Action]
A -> B -> C -> D

[Directional Commands]
5C = Can be held. Charged 5C capable of fatal counter. Ground slide
on air hit.

6A = Overhead. Ground bounce on air/lie states.
6B = Anti-air.
6C = Low invinciblity start up. Wall bounce.

4C = Trip. Has stand/air invincibility shortly after startup.

[Defensive Commands]
Burst = z + C or A+B+C+D while hurt
Assault Counter = 6A+B while guarding (Takes 1 bar)

[Special Commands]
Heat the Beat (Overdrive)
 -A+B+C+D (Or z+a (z+D))

Wadcutter Engage
 -D After D
 *Must have heat level 1 or higher.*

Flint Shooter
 -236A (Can be charged)

Cutting Shear
 -623B
 ->Explode Engage
  -22D (Additional hit can be cancelled by holding D)
  *Must have heat level 1 or higher.*

Miquelet Capture
 -41236C
 ->Piercing Engage
  -236C
  *Must have heat level 1 or higher.*

Snap Hands Fist
 -623C
 ->Flechette Engage
  -623D
  *Must have heat level 1 or higher.*

After Burner
 -214D

[Distortion Drive]
Rage Aggressor
 -2363214C

Serpentine Assault
 -(360)(360)D
 ->Frangible Engage
  -(360)(360)(360)D
  *Must have heat level 1 or higher.*
  ->Blackout
   -(360)(360)(360)D
   *Must have 1 bar.*

[Astral Finish]
Hard Kill Bringer
 -632146D
 *2 Bars, last round, with opponent on 30% health.*

===========================Tips and Tricks===========================
(By holding down the D button, Bullet creates a growing orange circle
around her. If the opponent is inside this circle, they are "locked
on" with a special crosshair. By releasing the D button, Bullet
launches herself at the opponent she locked on to with an attack (if
she didn't lock on to them, she simply cancels the stance).

If Bullet lands a hit with her Drive, she gains one Heat Up level.
She can have up to two (starting with none), with the first one
denoted by an orange shade and the second one by a larger red one.

Heat Up levels last for 900 frames; the timer resets each time she
gains another level. Gaining levels when you're already at Lv2
doesn't do anything but reset the timer.

Heat Up levels have many different effects on Bullet's moves.
Some moves revert her to Lv0, usually leading into a combo that lets
her regain at least one level.

At Lv1 and Lv2, Bullet's ground and aerial dashes become faster and
cover more distance. The circle produced by the Drive also gets
larger.

If Bullet doesn't land a hit with her Drive after launching herself,
she loses a Heat Up level instead.

By locking on to the enemy for long enough, the crosshair becomes red
and makes a beeping noise. If Bullet attacks with her Drive in this
"Red Lock" state, the properties of her moves change, dealing more
damage, gaining invulnerability, and being more advantageous on
block. The time required to get the Red Lock is reduced if Bullet has
extra Heat Up levels.

After using Overdrive, Bullet immediately gains a single Heat Up
level.

During Overdrive, Bullet does not lose any Heat Up levels, whether
the opponent blocks your D attacks or you use the D follow-ups of
special moves.
After leaving the Overdrive state, Bullet retains the Heat Up level
she gained while entering it.

The Heat Up level timer freezes while in Overdrive, and resets after
Bullet leaves the Overdrive state.) -Info taken from Dustloop Wiki.

===========================Source Changes============================
Piercing Engage has a bigger hitbox to ensure opponent gets hit.
Negative penality not implemented.
Same Move Proration not implemented.

===========================Author Comments===========================
Version 0.99
-First release of Bullet. This is the 'Lite' version of Bullet. I've
excluded sprite heavy animations (such as the distortion background)
to limit her .sff file to be smaller than 80 MB.

There is a lot effects that is currently missing. The sprites will
be ripped and added at a later time.

I'll be releasing a MUGEN 1.1 version of Bullet in the near future.
This will cover all the special effects, such as the distortion
background.

What took me so long? Work / Life balance. I haven't quit MUGEN and
I'm not intending to. Ripping the effects is more tedious than I
originally thought.

==============================Afterword==============================
This is my first source accurate (with minor changes) character. It
took a while since my laptop was not performing well since it was
old. Now that I've build desktop, I shouldn't have any problems with
performance.

Special thanks to:
-ArtistofLegacy (Alpha/Beta phase testing)
-Neat Unsou (SFX sprites)

And you, for downloading and playing.
 -Seraphs Ares

===============================Trivia================================
Did you know when Bullet fixes her pants for her taunt?

===============================Updates===============================
Version 0.99 Revision A
-5D / j.5D
	- Ground bounce slightly increased gravity.
	- Ground bounce slightly decreased bounce.

-j.5B
	- Increased up velocity on hit.

-Overdrive:
	-Increased pause time.

-41236C (Miquelet Capture):
	- Decreased hit velocity.
	- Decreased hit gravity.
 ->236D (Flechette Engage):
	-Wall bounce decreased bounce back.

-Other
	- Fixed bug where guard ends prematurely.
	- Added sound on ground slam at the start of ground slide on 5C.
	- Added Distortion Background.
	- Added missing effects.
	- Improved AI.