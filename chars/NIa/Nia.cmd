[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;---------------------------------------------------

;Hyper Moves
;---------------------------------------------------

[Command] 
name = "Hyper1"
command = ~D, DF, F, x+y

[Command]
name = "Hyper1"
command = ~D, DF, F, x+z

[Command]
name = "Hyper1"
command = ~D, DF, F, y+z

;---------------------------------------------------
;Special Moves
;---------------------------------------------------

[Command] 
name = "Special1_X"
command = ~D, DF, F, x

[Command] 
name = "Special1_Y"
command = ~D, DF, F, y

[Command] 
name = "Special1_Z"
command = ~D, DF, F, z

[Command] 
name = "QCB_x"
command = ~D, DB, B, x
;---------------------------------------------------
;Super Jump
;---------------------------------------------------

[Command] 
name = "highjump"
command = $D, $U
time = 10

;---------------------------------------------------
;Recovery
;---------------------------------------------------

[Command]
name = "recovery"
command = x
time = 1

[Command]
name = "recovery"
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /y
time = 1

;---------------------------------------------------
;Double Tap
;---------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "DD"     
command = D, D
time = 10
;---------------------------------------------------
;Single Buttons
;---------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "x+y"
command = x+y
time = 1
;---------------------------------------------------
;Hold Directions
;---------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;---------------------------------------------------
;Hold Buttons
;---------------------------------------------------

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_start"
command = /s
time = 1

;---------------------------------------------------
;Direction Tap
;---------------------------------------------------
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;---------------------------------------------------
;Dashing
;---------------------------------------------------

[Command]
name = "dash"
command = x+y
time = 1


[Command]
name = "dash"
command = x+z
time = 1

[Command]
name = "dash"
command = y+z
time = 1

;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------
[Statedef -1]

;---------------------------------------------------
;Hyper Moves
;---------------------------------------------------

;Hyper Move 1
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Hyper1"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1010 && movecontact
trigger16 = stateno = 1020 && movecontact

;---------------------------------------------------
;Special Moves
;---------------------------------------------------

;Air Lariat
[State -1]
type = ChangeState
value = 1002
triggerall = command = "Special1_X" && var(6) = 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1000 && movecontact && time >=3
trigger3 = (stateno = [600,650])&& var(6) = 0 && movehit 
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Special1_X"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,430])&& movecontact
trigger3 = (stateno = [400,450])&& movecontact

;Special1_Y
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Special1_Y"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [200,430])&& movecontact
trigger3 = (stateno = [400,450])&& movecontact

;Special1_Z
[State -1]
type = ChangeState
value = 1020
triggerall = command = "Special1_Z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 250 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 420 && movecontact
trigger11 = stateno = 430 && movecontact
trigger12 = stateno = 440 && movecontact
trigger13 = stateno = 450 && movecontact
trigger14 = stateno = 1000 && movecontact
trigger15 = stateno = 1010 && movecontact

;Hug of Destruction!
[State -1]
type = ChangeState
value = 1600
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

;Sweap
[State -1]
type = ChangeState
value = 440
triggerall = command = "x+y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

[State -1, Throw]
type=ChangeState
value =800
trigger1=(command = "holdfwd"||command = "holdback")&& command = "x+y"
trigger1=!AILevel && RoundState=2 && Statetype!=A && !var(20)
trigger1=ctrl


;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact

;Stand Heavy Punch
  [State -1]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && movecontact
trigger4 = (stateno = [230,240])&& movecontact
trigger5 = (stateno = [400,410])&& movecontact

;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && movecontact
trigger4 = (stateno = [400,450])&& movecontact
;Stand Heavy Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101
trigger3 = (stateno = [200,430])&& movecontact
trigger4 = (stateno = [400,450])&& movecontact

;Crouch Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact

;Crouch Heavy Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = [200,409])&& movecontact

;Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 410 && movecontact



 
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 600 && movecontact
;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
;Jump Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact
trigger5 = stateno = 640 && movecontact

;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact

;Dash Forwards
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl

;Dash Backwards
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

;Super Jump
[State -1]
type = ChangeState
value = 45
trigger1 = command = "holdup"
trigger1 = statetype = A && ctrl
trigger1 = vel y > 0 && var(2) && !var(3)

;Jump/Super Jump
[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup" && !var(1) && prevstateno != 810
trigger1 = stateno = [100,102]
trigger2 = stateno = [200,450] && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Cancel]
type = ChangeState
value = 40
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "holdup"
trigger1 = stateno = 400 && movehit
trigger2 = stateno = 410 && movehit
trigger3 = stateno = 450 && movehit
trigger4 = stateno = 200 && movehit
trigger5 = stateno = 210 && movehit

[State -1, PerfectBlock Stand]
type = HitOverride
triggerall = !AILevel && roundstate=2 && Statetype != A
triggerall = command = "fwd" && command != "back" && command != "up" && command != "down"
trigger1 = Ctrl
stateno = 6130
attr = SA, AA, AP
; Slot just sets the order in which State -1 will take precedence, so PerfectBlock has the highest priority of State -1 I guess?
; Source: https://mugenfreeforall.com/topic/34752-ricepigeons-coding-tutorial-code-snippet-repository/
slot = 0
time = 7

[State -1, PerfectBlock Crouch]
type = HitOverride
triggerall = !AILevel && roundstate=2 && Statetype != A
;triggerall = command = "fwd" && command = "down" && command != "back" && command != "up" 
triggerall = command = "holddown" && command = "holdfwd"
trigger1 = Ctrl
stateno = 6131
attr = C, NA, SA, HA
; Slot just sets the order in which State -1 will take precedence, so PerfectBlock has the highest priority of State -1 I guess?
; Source: https://mugenfreeforall.com/topic/34752-ricepigeons-coding-tutorial-code-snippet-repository/
slot = 0
time = 7

;Taunt
[State -1]
type = ChangeState
value = 800
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 101 || stateno = 106) && time > 3