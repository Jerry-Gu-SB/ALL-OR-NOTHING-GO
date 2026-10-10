; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]



;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(2) = 0


[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499] || stateno = [600,700]) 
trigger2 = movecontact
var(1) = 1

[State -1, Super Cancel Special Attacks]
type = VarSet
trigger1 = var(1)
trigger2 = (stateno = [1001,1003) || (stateno = 1012) || stateno = 1100) 
var(2) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "AB"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;236A - Crescent Edge
[State -1]
type = ChangeState
value = 1000
triggerall = command = "236A" && statetype != A
trigger1 = var(1)


;---------------------------------------------------------------------------
;236B - Crescent Edge
[State -1]
type = ChangeState
value = 1010
triggerall = command = "236B" && statetype != A
trigger1 = var(1)

;Ex Crescent Edge
[State -1]
type = ChangeState
value = 1020
triggerall = command = "236C"
triggerall = power >= 1000 && statetype != A
trigger1 = var(1)
trigger2 =  var(2)

; 22A Blood Cleaver
[State -1]
type = ChangeState
value = 1100
triggerall = command = "22A"
triggerall = statetype != A
trigger1 = var(1)

;---------------------------------------------------------------------------
;22B Blood Cleaver
[State -1]
type = ChangeState
value = 1110
triggerall = command = "22B"
triggerall = statetype != A
trigger1 = var(1)

;---------------------------------------------------------------------------
;22C Blood Cleaver
[State -1]
type = ChangeState
value = 1120
triggerall = command = "22C"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = var(1)
trigger2 =  var(2)


;---------------------------------------------------------------------------



;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "66"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "44"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;66L
[State -1, 66B]
type = ChangeState
value = 232
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "B" 
trigger1 = statetype != A
trigger1 = Stateno = 100
;---------------------------------------------------------------------------
[State -1, 3C]
type = ChangeState
value = 440
triggerall = command = "C" && command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl|| (stateno = [200,225] || stateno = [400,420]) && movecontact
trigger2 = stateno = 100


[State -1, 6C]
type = ChangeState
value = 230
triggerall = command = "C" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl|| (stateno = [200,225] || stateno = [400,420]) && movecontact
trigger2 = stateno = 100 


;===========================================================================
;---------------------------------------------------------------------------
;5A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
[State -1, 5B]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X=[-40,40]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact && prevStateNo != 210


;---------------------------------------------------------------------------
;F.5B
[State -1, F.5B]
type = ChangeState
value = 215
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X > 40
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact && prevStateNo != 210
trigger5 = stateno = 410 && movecontact && prevStateNo != 215
 

;---------------------------------------------------------------------------
;5C
[State -1]
type = ChangeState
value = 225
triggerall = stateno!=40
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist X=[-40,40]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = (Stateno = [210,215])&& movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 420 && movecontact && prevStateNo != 220 && prevStateNo != 225
;---------------------------------------------------------------------------
;F.5C
[State -1]
type = ChangeState
value = 220
triggerall = stateno!=40
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist X > 40
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = (Stateno = [210,215])&& movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 420 && movecontact && prevStateNo != 220 && prevStateNo != 225

;===========================================================================
;---------------------------------------------------------------------------
;5C~C
[State -1]
type = ChangeState
value = 221
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;2A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 100


;---------------------------------------------------------------------------
[State -1, 2B]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 210 && movecontact && prevStateNo != 410
trigger5 = stateno = 215 && movecontact && prevStateNo != 410
trigger6 = stateno = 100

;---------------------------------------------------------------------------
[State -1, 2C]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = (Stateno = [210,215])&& movecontact
trigger4 = stateno = [220,225] && movecontact && prevStateNo != 420
trigger5 = stateno = 225 && movecontact && prevStateNo != 420
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 100





;---------------------------------------------------------------------------
;assault
[State -1]
type = ChangeState
value = 500
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "d"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101


;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, JA]
type = ChangeState
value = 600
triggerall = command = "A"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, JB]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 
trigger2 = movecontact

;
[State -1, JBB]
type = ChangeState
value = 611
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 
trigger2 = movecontact

;Jump Strong Kick
[State -1, J.2C]
type = ChangeState
value = 630
triggerall = command = "c" && command = "holdfwd"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno =[610,620] ;jump_x or jump_a
trigger2 = movecontact

;Jump Strong Kick
[State -1, JC]
type = ChangeState
value = 615
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno =[610,611] ;jump_x or jump_a
trigger2 = movecontact


;Jump/Super Jump
[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup" && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [200,225] && MoveHit
trigger3 = stateno = [400,450] && MoveHit
trigger4 = stateno = 410 && MoveHit



; Slot just sets the order in which State -1 will take precedence, so PerfectBlock has the highest priority of State -1 I guess?
; Source: https://mugenfreeforall.com/topic/34752-ricepigeons-coding-tutorial-code-snippet-repository/
slot = 0
time = 7
