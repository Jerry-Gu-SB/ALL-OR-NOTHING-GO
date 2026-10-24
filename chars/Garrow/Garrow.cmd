[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


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
trigger2 = (stateno = [1001,1003]) || (stateno =[1012,1013] || stateno = 1100)
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


[State -1]
type = ChangeState
value = 1000
triggerall = command = "236A" 
trigger1 = stateno = 233


[State -1]
type = ChangeState
value = 1010
triggerall = command = "236B" 
trigger1 = stateno = 233


[State -1]
type = ChangeState
value = 1020
triggerall = command = "236C"
triggerall = power >= 1000 
trigger1 = stateno = 233

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


[State -1, 4C]
type = ChangeState
value = 230
triggerall = command = "C" && command = "holdback"
triggerall = command != "holddown"
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
triggerall = !map(No5C)
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
trigger2 = stateno = 220 
trigger2 = time > 18 || MoveContact


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
triggerall = !map(No2C)
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = (Stateno = [210,215] || stateno = [400,410])&& movecontact
trigger4 = stateno = [220,225] && movecontact && prevStateno != 420
trigger6 = stateno = 100


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
