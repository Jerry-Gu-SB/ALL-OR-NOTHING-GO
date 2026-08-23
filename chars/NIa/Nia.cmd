[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Statedef -1]

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(2) = 0

[State -1, Special Cancel Normal Attacks]
type = VarSet
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499] || stateno = [600,700]) 
trigger2 = movecontact
var(1) = 1
ignorehitpause = 1
[State -1, Super Cancel Special Attacks]
type = VarSet
trigger1 = var(1)
trigger2 = stateno = [1000,3000) && MoveContact
trigger3 = (stateno = [1000, 1001] || stateno = 2000 ) && animelemno(0) > 3
trigger4 = stateno = 2100 && animelemno(0) >= 2
var(2) = 1
ignorehitpause = 1

;Dash Forwards
[State -1]
type = ChangeState
value = 101
triggerall = statetype != A
triggerall = command = "66"
trigger1 = ctrl || stateno = 211 && MoveContact

;Dash Backwards
[State -1]
type = ChangeState
value = 105
triggerall = statetype != A && command = "44"
trigger1 = ctrl

;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 55
triggerall = statetype != A
triggerall = command = "28" || command = "27" || command = "29"
trigger1 = ctrl
trigger2 = Map(JC)

[State -1,JC]
type = ChangeState
value = 40
triggerall = statetype != A && stateno != 40
triggerall = command = "holdup" || command = "up"
trigger1 = map(JC)
trigger2 = ctrl ||stateno = 100 && time > 3

;---------------------------------------------------
;Hyper Moves
;---------------------------------------------------

;Ex Lariat
[State -1]
type = ChangeState
value = 1019
triggerall = command = "236C"
triggerall = power >= 1000 && statetype != A
trigger1 = var(1)

;---------------------------------------------------
;Special Moves
;---------------------------------------------------



;236A
[State -1]
type = ChangeState
value = 1000
triggerall = command = "236A" && statetype != A
trigger1 = var(1) || ctrl

;236B
[State -1]
type = ChangeState
value = 1010
triggerall = command = "236B" && statetype != A
trigger1 = var(1)

;EX Hug of Destruction!
[State -1]
type = ChangeState
value = 1620
triggerall = command = "214C" && statetype != A
triggerall = power >= 1000
trigger1 = var(1)

;Jump Air Grab
[State -1]
type = ChangeState
value = 840
triggerall = command = "AB"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 620 && movecontact

;214A - Hug of Destruction
[State -1]
type = ChangeState
value = 1600
triggerall = command = "214A"
triggerall = statetype != A
trigger1 = var(1)

;214B - Hug of Destruction
[State -1]
type = ChangeState
value = 1610
triggerall = command = "214B"
triggerall = statetype != A
trigger1 = var(1)

;3C - Antiair Grab
[State -1, 3C]
type = ChangeState
value = 700
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "C" && command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [200,233] || stateno = [400,440]) && movecontact
trigger2 = stateno = 101 

;Sweep
[State -1]
type = ChangeState
value = 440
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "C" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = stateno = 220 && movecontact && prevStateNo != 440
trigger8 = stateno = 101 


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

[State -1, 66L]
type = ChangeState
value = 230
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "A" && command = "holdfwd"
trigger1 = statetype != A
trigger1 = Stateno = 100
trigger2 = Stateno = 101 && Time < 10

;dash punch cancel
[State -1, 66L]
type = ChangeState
value = 230
triggerall = command = "A" && command = "holdfwd"
triggerall = statetype != A
trigger1 = (stateno = [200,220] || stateno = [400,410]) && movecontact


[State -1, 66H]
type = ChangeState
value = 240
triggerall = command = "B" && command = "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 101

;dash punch cancel
[State -1, 66L]
type = ChangeState
value = 240
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "B" && command = "holdfwd"
triggerall = statetype != A
trigger1 = (stateno = [200,210] || stateno = [400,410]) && movecontact

[State -1, 66LL]
type = ChangeState
value = 231
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "A"
triggerall = statetype != A
trigger1 = stateno = 230
trigger1 = Movecontact


[State -1, 66LLL]
type = ChangeState
value = 232
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "A"
triggerall = statetype != A
trigger1 = stateno = 231
trigger1 = Movecontact



[State -1, 66LLLL]
type = ChangeState
value = 233
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "A"
triggerall = statetype != A
trigger1 = stateno = 232
trigger1 = Movecontact





;5A
[State -1]
type = ChangeState
value = 200
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "A"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact

;5B
[State -1]
type = ChangeState
value = 210
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "B"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact 
trigger5 = stateno = 410 && movecontact && prevStateNo != 210

;2A
[State -1]
type = ChangeState
value = 400
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "A"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 101 


;2B
[State -1]
type = ChangeState
value = 410
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "B"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact && prevStateNo != 410
trigger4 = stateno = 400 && movecontact 
trigger5 = stateno = 101 

;5C
[State -1]
type = ChangeState
value = 220
triggerall = !ishelper
triggerall = !AIlevel
triggerall = command = "C"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (Stateno = [200,210]) && Movecontact
trigger3 = (Stateno = [210,211]) && Movecontact
trigger4 = (Stateno = [400,410]) && Movecontact
trigger5 = stateno = 440 && movecontact && prevStateNo != 220
trigger6 = stateno = 101



;j.A
[State -1]
type = ChangeState
value = 600
triggerall = command = "A"
triggerall = statetype = A 
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && prevstateno != 600

;j.B
[State -1]
type = ChangeState
value = 610
triggerall = command = "B"
triggerall = statetype = A 
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;j.C
[State -1]
type = ChangeState
value = 620
triggerall = command = "C"
triggerall = statetype = A 
trigger1 = ctrl
trigger2 = stateno = [600,610] && movecontact



;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 101 || stateno = 106) && time > 3