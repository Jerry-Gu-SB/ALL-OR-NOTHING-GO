;SF2_zaf
;===========================================
[Statedef 500]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0

[State 1200,HitDef]
type = Hitdef
trigger1 = Time = 0 && P2bodydist X <= 25 && P2statetype != A && P2statetype != L && P2movetype != H && statetype != A && P2stateno != 50 && P2stateno != 51 
;trigger1 = command = "holdfwd" && command = "y"
attr = S, NT		
getpower = 60
givepower = 20
hitflag = M-			;M-
guardflag = -1			;None
priority = 3,miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 501
p2stateno = 505
fall = 1
fall.recover = 0


[State 1200,End]
type = ChangeState
trigger1 = time = 1
value = 405

[Statedef 501]
type = S
movetype = A
physics = N
anim = 510
velset = 0, 0
ctrl = 0

[state 1300]
type = Width
trigger1 = 1
edge = 80,0

[State 501,playsnd]
type = playsnd
trigger1 = animelem = 1
value = 10,0

[State 501,velset]
type = velset
trigger1 = animelem = 5
x = -2.5
y = -7.5

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50,0
time = 3

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 40,-60
time = 8

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 10,-40
time = 20

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 0,-13
time = 50

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = 1

[State 1215,Gravity]
type = Gravity
trigger1 = vel y != 0

[State 1215,ChangeState]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = vel y > 0
value = 502

[Statedef 502]
type = A
movetype = A
physics = N
anim = 513
velset = 0,0
ctrl = 0

[State 1220,EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 28

[State 501,playsnd]
type = playsnd
trigger1 = animelem = 1
value = F5,1

[State 1215,ChangeState]
type = targetlifeadd
trigger1 = time = 0
value = -200

[state explod]
type = explod
trigger1 = AnimElem = 1
sprpriority = 3
anim = F2
pos = -12,12
postype = p2

[State 1215,Gravity]
type = Gravity
trigger1 = animelemtime(2)>=0

[State 1215,ChangeState]
type = posset
trigger1 = time = 0
y = 0

[State 1215,ChangeState]
type = velset
trigger1 = animelem = 2
y = -5
x = -1

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 0,-13
time = 14

[State 1310,TargetBind]
type = Targetstate
trigger1 = AnimElem = 2
value = 506

[State 1215,ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52

;----------------------------------------------------------------------------
[Statedef 505]
type = A
movetype = H
physics = N
anim = 505
velset = 0, 0
ctrl = 0

[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 511


[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

;----------------------------------------------------------------------------
[Statedef 506]
type = A
movetype = H
physics = N
anim = 505
velset = -3, -4
ctrl = 0

[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 512


[State 1215,Gravity]
type = Gravity
trigger1 = 1

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1


[State 1335,SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100
;===========================================
[Statedef 510]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0

[State 1200,HitDef]
type = Hitdef
trigger1 = Time = 0 && P2bodydist X <= 55 && P2statetype != A && statetype != A && P2stateno != 50 && P2stateno != 51  && P2statetype != L  && P2movetype != H 
;trigger1 = command = "holdfwd" && command = "b"
attr = S, NT		
getpower = 60
givepower = 20
hitflag = M-			;M-
guardflag = -1			;None
priority = 3,miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 511
p2stateno = 515
fall = 1
fall.recover = 0

[State 1200,End]
type = ChangeState
trigger1 = time = 1
value = 225

;---------------------------------------------------------------------------------------------------------------------------------------
[Statedef 511]
type = S
movetype = A
physics = N
anim = 530
velset = 0, 0
ctrl = 0

[state 1300]
type = Width
trigger1 = 1
edge = 80,60

[State 501,playsnd]
type = playsnd
trigger1 = animelem = 1
value = 10,1

[State 501,playsnd]
type = playsnd
trigger1 = AnimElem = 9
value = F5,1

[State 1220,EnvShake]
type = EnvShake
trigger1 = AnimElem = 9
time = 28


[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,0
time = 3

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 45,-60
time = 10

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 50,-75
time = 6

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 8,-120
time = 20

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = -55,-90
time = 8

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = -75,-55
time = 4

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 9
pos = -80,-7
time = 5

[State 911, 1]
type = targetLifeAdd
Trigger1 = AnimElem = 9
value = -230

[state explod]
type = explod
trigger1 = AnimElem = 9
sprpriority = 3
anim = F2
pos = 20,5
postype = p2

[State 1215,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------
[Statedef 515]
type = A
movetype = H
physics = N
anim = 531
velset = 0, 0
ctrl = 0

[State 501,playsnd]
type = playsnd
trigger1 = alive
trigger1 = random < 400
trigger1 = name = "chunli"
trigger1 = AnimElem = 9
value = 5000,ifelse(random<300,1,2)

[State 910, 0]
type = posadd
Trigger1 = animelem = 8 
x = 21

[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 531

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

[State 1220,velset]
type = velset
trigger1 = animelemtime(9) = 0
y = -5
x = 2
[State 1220,velset]
type = veladd
trigger1 = animelemtime(9) >= 0
y = 0.4

[State 501,velset]
type = velset
trigger1 = animtime = 0
y = -10

[State 1335,SelfState]
type = SelfState
trigger1 = animtime = 0
;trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100



;===========================================
[Statedef 560]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0

[State 1200,HitDef]
type = Hitdef
trigger1 = Time = 0 && P2bodydist X <= 55 && P2statetype != A && statetype != A && P2stateno != 50 && P2stateno != 51  && P2statetype != L  && P2movetype != H 
;trigger1 = command = "holdfwd" && command = "b"
attr = S, NT		
getpower = 60
givepower = 20
hitflag = M-			;M-
guardflag = -1			;None
priority = 3,miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 561
p2stateno = 565
fall = 1
fall.recover = 0

[State 1200,End]
type = ChangeState
trigger1 = time = 1
value = 225

;---------------------------------------------------------------------------------------------------------------------------------------
[Statedef 511]
type = S
movetype = A
physics = N
anim = 530
velset = 0, 0
ctrl = 0

[state 1300]
type = Width
trigger1 = 1
edge = 80,90

[State 501,playsnd]
type = playsnd
trigger1 = animelem = 1
value = 10,1

[State 501,playsnd]
type = playsnd
trigger1 = AnimElem = 8
value = F5,1

[State 1220,EnvShake]
type = EnvShake
trigger1 = AnimElem = 8
time = 28

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,0
time = 3

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 45,-60
time = 10

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 50,-75
time = 6

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 8,-120
time = 20

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = -55,-90
time = 8

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = -75,-55
time = 4

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 9
pos = -100,0
time = 1

[state explod]
type = explod
trigger1 = AnimElem = 9
sprpriority = 3
anim = F2
pos = 20,5
postype = p2 

[State 911, 1]
type = TargetLifeAdd
Trigger1 = AnimElem = 9
value = -230

[State 1215,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------
[Statedef 515]
type = A
movetype = H
physics = N
anim = 531
velset = 0, 0
ctrl = 0



[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 531

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

[State 501,playsnd]
type = playsnd
trigger1 = alive
trigger1 = random < 400
trigger1 = name = "chunli"
trigger1 = AnimElem = 9
value = 5000,ifelse(random<300,1,2)

[State 1220,velset]
type = velset
trigger1 = animelemtime(9) = 0
y = -5
x = 2
[State 1220,velset]
type = veladd
trigger1 = animelemtime(9) >= 0
y = 0.4

[State 501,velset]
type = velset
trigger1 = animtime = 0
y = -10

[State 1335,SelfState]
type = SelfState
trigger1 = animtime = 0
;trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100



;===========================================
[Statedef 540]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0

[State 1200,HitDef]
type = Hitdef
trigger1 = Time = 0 && P2bodydist X <= 55 && P2statetype != A && statetype != A && P2stateno != 50 && P2stateno != 51  && P2statetype != L  && P2movetype != H 
;trigger1 = command = "holdfwd" && command = "b"
attr = S, NT		
getpower = 60
givepower = 20
hitflag = M-			;M-
guardflag = -1			;None
priority = 3,miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 541
p2stateno = 545
fall = 1
fall.recover = 0

[State 1200,End]
type = ChangeState
trigger1 = time = 1
value = 225

;---------------------------------------------------------------------------------------------------------------------------------------
[Statedef 541]
type = S
movetype = A
physics = N
anim = 540
velset = 0, 0
ctrl = 0

[state 1300]
type = Width
trigger1 = 1
edge = 80,60

[State 501,playsnd]
type = playsnd
trigger1 = animelem = 1
value = 10,1

[State 501,playsnd]
type = playsnd
trigger1 = AnimElem = 8
value = F5,1

[State 1220,EnvShake]
type = EnvShake
trigger1 = animelem = 8
time = 28

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,0
time = 30

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -45,0
time = 10

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -45,-45
time = 16

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = -18,-83
time = 20

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = 55,-85
time = 8

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = 109,0
time = 17

[state explod]
type = explod
trigger1 = AnimElem = 8
sprpriority = 3
anim = F2
pos = 20,5
postype = p2 

[State 911, 1]
type = TargetLifeAdd
Trigger1 = AnimElem = 9
value = -230

[State 1215,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------
[Statedef 545]
type = A
movetype = H
physics = N
anim = 531
velset = 0, 0
ctrl = 0

[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 541

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

[State 501,playsnd]
type = playsnd
trigger1 = alive
trigger1 = random < 400
trigger1 = name = "chunli"
trigger1 = AnimElem = 8
value = 5000,ifelse(random<300,1,2)

[State 1220,velset]
type = velset
trigger1 = animelemtime(8) = 18
y = -5
x = -2
[State 1220,velset]
type = veladd
trigger1 = vel y != 0
trigger1 = animelemtime(8) >= 18
y = 0.4

[State 501,velset]
type = velset
trigger1 = animtime = 0
y = -10

[State 1335,SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100

;===========================================
[Statedef 520]
type = C
movetype = A
physics = C
velset = 0, 0
ctrl = 0

[State 1200,HitDef]
type = Hitdef
trigger1 = Time = 0 && P2bodydist X <= 45 && P2statetype != A && P2statetype != L && P2movetype != H && statetype != A && P2stateno != 50 && P2stateno != 51 
;trigger1 = command = "holdfwd" && command = "z"
attr = S, NT		
getpower = 60
givepower = 20
hitflag = M-			;M-
guardflag = -1			;None
priority = 3,miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 521
p2stateno = 525
fall = 1
fall.recover = 0

[State 1200,End]
type = ChangeState
trigger1 = time = 1
value = 210

;-------------------------------------------------------------------
[Statedef 521]
type = C
movetype = A
physics = C
anim = 521
velset = 0, 0
ctrl = 0

[state 1300]
type = Width
trigger1 = 1
edge = 80,60

[state 12]
type = varadd
trigger1 = time = 0
var(14) = -1

[state 12]
type = varadd
triggerall = var(11) = 1
trigger1 = random <300
trigger1 = time = 0
var(14) = random/500

[state 12]
type = varset
triggerall = var(11) != 1
triggerall = time = 0
trigger1 = 1
var(11) = 2

[state 12]
type = varset
triggerall = time = 0
trigger1 = random < 100
trigger2 = command = "hold_b"
var(11) = 1

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
var(12) = 35

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_x"
var(13) = 13

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_x"
var(12) = 27

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_y"
var(13) = 10

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_y"
var(12) = 23

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_a"
var(13) = 11

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_a"
var(12) = 20

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
var(13) = 18

[state 12]
type = VarRandom
trigger1 = var(11) = 1
trigger1 = time = 0
v = 10
range = 4

[state 12]
type = varset
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
trigger1 = time = 0
var(12) = 9

[state 12]
type = Varset
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
trigger1 = time = 0
var(13) = 1+ifelse(random<200,1,0)


[state 12]
type = varset
trigger1 = var(11) = 1
trigger1 = var(10) = 0
trigger1 = time = 0
var(12) = 3


[state 12]
type = varset
trigger1 = var(11) = 1
trigger1 = var(10) = 0
trigger1 = time = 0
var(13) = 9

[State 1310,TargetBind]
type = TargetBind
triggerall = p2name != "chunli"
trigger1 = 1
pos = 66,-95
time = 1

[State 1310,TargetBind]
type = TargetBind
triggerall = p2name = "chunli"
trigger1 = 1
pos = 61,-91
time = 1

[state explod]
type = explod
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
trigger1 = time = 0
sprpriority = 3
anim = F2
pos = 0,0
postype = p2 

[State 911, 1]
type = Playsnd
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
trigger1 = time = 0
value = 10,1

[State 1310,TargetBind]
type = Targetlifeadd
trigger1 = time = 0
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
value = -3

[State 1310,TargetBind]
type = Targetstate
triggerall = time = 0
trigger1 = 1
value = 525

[State 911, 1]
type = Playsnd
Trigger1 = animelem = 2
value = 10,1

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = 1

[State 1215,ChangeState]
type = TargetState
trigger1 = time = 200 
value = 526

[State 1215,ChangeState]
type = ChangeState
trigger1 = time > var(12)
value = 522

[State 1215,ChangeState]
type = ChangeState
trigger1 = time = 200 
value = 0
ctrl = 1

;-------------------------------------------------------------------
[Statedef 522]
type = C
movetype = A
physics = C
anim = 522
velset = 0, 0
ctrl = 0

[state 12]
type = varset
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
trigger1 = time = 0
trigger1 = random <400
var(10) = 0

[state 12]
type = varset
trigger1 = var(11) = 1
trigger1 = var(10) = [0,1]
trigger1 = time = 0
var(13) = 9

[state explod]
type = explod
triggerall = time = 0
trigger1 = var(11) = 1
trigger1 = var(10) = [0,1]
trigger2 = var(11) = 2
sprpriority = 3
anim = F2
pos = 0,0
postype = p2 


[State 911, 1]
type = Playsnd
triggerall  = time = 0
trigger1 = var(11) = 2
trigger2 = var(11) = 1
trigger2 = var(10) = [0,1]
value = 10,1

[State 1310,TargetBind]
type = Targetlifeadd
triggerall = time = 0
trigger1 = var(11) = 2
trigger2 = var(11) = 1
trigger2 = var(10) = [0,1]
value = -3

[State 1310,TargetBind]
type = TargetBind
triggerall = p2name != "chunli"
trigger1 = 1
pos = 57,-95
time = 1

[State 1310,TargetBind]
type = TargetBind
triggerall = p2name = "chunli"
trigger1 = 1
pos = 54,-98
time = 1

[State 1310,TargetBind]
type = Targetstate
triggerall = time = 0
trigger1 = 1
value = 526

[State 911, 1]
type = Playsnd
Trigger1 = animelem = 2
value = 10,1

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = 1

[State 1215,ChangeState]
type = ChangeState
trigger1 = time >= var(13)
value = 521

[State 1215,ChangeState]
type = ChangeState
trigger1 = time = 2000 
value = 0
ctrl = 1

;-------------------------------------------------------------------
[Statedef 525]
type = A
movetype = H
physics = N
anim = 525
velset = 0, 0
ctrl = 0


[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 525

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

;-------------------------------------------------------------------
[Statedef 526]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 526

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

[Statedef 528]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 910, 0]
type = ChangeAnim
Trigger1 = Time = 0 
value = 43

[State 910, 0]
type = Nothitby
Trigger1 = Time >= 0 
value = SCA

[State 910, 0]
type = velset
Trigger1 = Time >= 0 
x = -3
y  = -5
[State 910, 0]
type = velset
Trigger1 = Time >= 5
y  = - 3
[State 910, 0]
type = velset
Trigger1 = Time >= 10
y  = -1
[State 910, 0]
type = velset
Trigger1 = Time >= 15
y  = 0
[State 910, 0]
type = velset
Trigger1 = Time >= 20
y  = 4
[State 910, 0]
type = velset
Trigger1 = Time >= 25
y  = 8
[State 910, 0]
type = velset
Trigger1 = Time >= 30
y  = 12

[State 1215,ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 527

[Statedef 527]
type = A
movetype = H
physics = N
anim = 0
velset = 0, 0
ctrl = 0

[State 910, 0]
type = Posset
Trigger1 = time = 0
y = 0

[State 1335,SelfState]
type = SelfState
trigger1 = time = 1
value = 0
ctrl = 1

;===========================================
[Statedef 560]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0

[State 1200,HitDef]
type = Hitdef
trigger1 = Time = 0 && P2bodydist X <= 25 && P2statetype != A && P2statetype != L && P2movetype != H && statetype != A && P2stateno != 50 && P2stateno != 51 
;trigger1 = command = "holdfwd" && command = "c"
attr = S, NT		
getpower = 60
givepower = 20
hitflag = M-			;M-
guardflag = -1			;None
priority = 3,miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 561
p2stateno = 565
fall = 1
fall.recover = 0
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10

[State 1200,End]
type = ChangeState
trigger1 = time = 1
value = 230

;-------------------------------------------------------------------
[Statedef 561]
type = S
movetype = A
physics = S
anim = 561
velset = 0, 0
ctrl = 0

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20,0
time = 2
[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 70,0
time = 4
[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50,0
time = 4
[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 60,0
time = 4
[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 50,-80
time = 170
[State 1310,TargetBind]
type = TargetBind
trigger1 = time = 213
pos = 50,0
time = 1

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = 1

[State 1215,ChangeState]
type = explod
trigger1 = time = 15 || time = 65 || time = 115 || time = 165
anim = 81
ID = 81
sprpriority = 2
postype = P1
pos = 60,25
bindtime = -1
supermove = 1
ownpal = 1
removetime = 27

[State 911, 1]
type = Playsnd
trigger1 = time = 15 || time = 65 || time = 115 || time = 165
value = 0,10

[State 1215,ChangeState]
type = ChangeState
trigger1 = animtime = 0 
value = 0
ctrl = 1

;-------------------------------------------------------------------
[Statedef 565]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 911, 1]
type = LifeAdd
trigger1 = time = 15 || time = 65 || time = 115 || time = 165
value = -40

[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 565

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

[State 1215,ChangeState]
type = ChangeState
trigger1 = animtime = 0 
value = 526
ctrl = 0

;===========================================
[Statedef 570]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0

[State 1200,HitDef]
type = Hitdef
trigger1 = Time = 0 && P2bodydist X <= 25 && P2statetype != A && P2statetype != L && P2movetype != H && statetype != A && P2stateno != 50 && P2stateno != 51 
;trigger1 = command = "holddown" && command = "y"
;trigger1 = command = "holddown" && command = "z"
attr = S, NT		
getpower = 60
givepower = 20
hitflag = M-			;M-
guardflag = -1			;None
priority = 3,miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 571
p2stateno = 575
fall = 1
fall.recover = 0

[State 1200,End]
type = ChangeState
trigger1 = time = 1
value = 305

[state 12]
type = varset
triggerall = time = 0
trigger1 = 1
var(14) = 70

[State 1200,End]
type = ChangeState
trigger1 = time = 1
value = 310

;-------------------------------------------------------------------
[Statedef 571]
type = S
movetype = A
physics = S
anim = 570
velset = 0, 0
ctrl = 0

[state 1300]
type = Width
trigger1 = 1
edge = 80,60

[state 12]
type = varadd
trigger1 = time = 0
var(14) = -1

[state 12]
type = varadd
triggerall = var(11) = 1
trigger1 = random <300
trigger1 = time = 0
var(14) = random/500

[state 12]
type = varset
triggerall = var(11) != 1
triggerall = time = 0
trigger1 = 1
var(11) = 2

[state 12]
type = varset
triggerall = time = 0
trigger1 = random < 100
trigger2 = command = "hold_b"
var(11) = 1

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
var(12) = 35

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_x"
var(13) = 13

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_x"
var(12) = 27

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_y"
var(13) = 10

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_y"
var(12) = 23

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_a"
var(13) = 11

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
trigger1 = command = "hold_a"
var(12) = 20

[state 12]
type = varset
trigger1 = var(11) = 2
trigger1 = time = 0
var(13) = 18

[state 12]
type = VarRandom
trigger1 = var(11) = 1
trigger1 = time = 0
v = 10
range = 4

[state 12]
type = varset
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
trigger1 = time = 0
var(12) = 9

[state 12]
type = Varset
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
trigger1 = time = 0
var(13) = 1+ifelse(random<200,1,0)


[state 12]
type = varset
trigger1 = var(11) = 1
trigger1 = var(10) = 0
trigger1 = time = 0
var(12) = 3

[state 12]
type = varset
trigger1 = var(11) = 1
trigger1 = var(10) = 0
trigger1 = time = 0
var(13) = 9

[State 1310,TargetBind]
type = TargetBind
trigger1 = p2name != "chunli"
trigger1 = 1
pos = 60,-70
time = 1

[State 1310,TargetBind]
type = TargetBind
trigger1 = p2name = "chunli"
trigger1 = 1
pos = 55,-75
time = 1

[State 1310,TargetBind]
type = Targetstate
trigger1 = time = 0
value = 575

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = 1


[state explod]
type = explod
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
trigger1 = time = 0
sprpriority = 3
anim = F2
pos = 0,0
postype = p2 

[State 911, 1]
type = Playsnd
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
trigger1 = time = 0
value = 10,1

[State 1310,TargetBind]
type = Targetlifeadd
trigger1 = time = 0
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
value = -3

[State 1215,ChangeState]
type = ChangeState
trigger1 = time >= var(12) 
value = 572

[State 1310,TargetBind]
type = Targetstate
triggerall = var(14) <=1
trigger1 = time >= var(12)
value = 5030

[State 1200,End]
type = ChangeState
triggerall = var(14) <=1
trigger1 = time >= var(12)
value = 0
ctrl = 1
;-------------------------------------------------------------------
[Statedef 572]
type = S
movetype = A
physics = S
anim = 571
velset = 0, 0
ctrl = 0

[state 12]
type = varset
trigger1 = var(11) = 1
trigger1 = var(10) = [2,4]
trigger1 = time = 0
trigger1 = random <400
var(10) = 0

[state 12]
type = varset
trigger1 = var(11) = 1
trigger1 = var(10) = [0,1]
trigger1 = time = 0
var(13) = 9

[state explod]
type = explod
triggerall = time = 0
trigger1 = var(11) = 1
trigger1 = var(10) = [0,1]
trigger2 = var(11) = 2
sprpriority = 3
anim = F2
pos = 0,0
postype = p2 

[State 1310,TargetBind]
type = Targetstate
trigger1 = time = 0
value = 576

[State 1310,TargetBind]
type = TargetBind
trigger1 = p2name != "chunli"
trigger1 = 1
pos = 65,-70
time = 1

[State 1310,TargetBind]
type = TargetBind
trigger1 = p2name = "chunli"
trigger1 = 1
pos = 60,-75
time = 1

[State 1310,TargetBind]
type = Targetstate
trigger1 = time = 0
value = 576

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = 1

[State 911, 1]
type = Playsnd
triggerall  = time = 0
trigger1 = var(11) = 2
trigger2 = var(11) = 1
trigger2 = var(10) = [0,1]
value = 10,1

[State 1310,TargetBind]
type = Targetlifeadd
triggerall = time = 0
trigger1 = var(11) = 2
trigger2 = var(11) = 1
trigger2 = var(10) = [0,1]
value = -3

[State 1215,ChangeState]
type = ChangeState
trigger1 = time >= var(13) 
value = 571

[State 1310,TargetBind]
type = Targetstate
triggerall = var(14) <=1
trigger1 = time >= var(12)
value = 5030

[State 1200,End]
type = ChangeState
triggerall = var(14) <=1
trigger1 = time >= var(12)
value = 0
ctrl = 1
;-------------------------------------------------------------------
[Statedef 575]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 575

[State 911, 1]
type = Playsnd
triggerall = life > 0
triggerall  = time = 0
trigger1 = random < 100
value = 5000,ifelse(random<700,2,1)

[state explod]
type = explod
trigger1 = name = "chunli"
sprpriority = 4
anim = 6900
bindtime = 99
removetime =  1
id = 3050
pos = 0,0
scale=Const(Size.xscale),Const(Size.yscale)

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

;-------------------------------------------------------------------
[Statedef 576]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 911, 1]
type = Playsnd
triggerall = life > 0
triggerall  = time = 0
trigger1 = random < 100
value = 5000,ifelse(random<700,2,1)

[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 576

[state explod]
type = explod
trigger1 = name = "chunli"
sprpriority = 4
anim = 6910
bindtime = 99
removeongethit =  1
ignorehitpause = 1
id = 3050
pos = 0,0
scale=Const(Size.xscale),Const(Size.yscale)



[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

;===========================================
;===========================================
[Statedef 580]
type = C
movetype = A
physics = C
velset = 0, 0
ctrl = 0

[State 1200,HitDef]
type = Hitdef
trigger1 = Time = 0 && P2bodydist X <= 25 && P2statetype != A && P2statetype != L && P2movetype != H && statetype != A && P2stateno != 50 && P2stateno != 51 
;trigger1 = command = "holdfwd" && command = "y"
attr = S, NT		
getpower = 60
givepower = 20
hitflag = M-			;M-
guardflag = -1			;None
priority = 3,miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 581
p2stateno = 582
fall = 1
fall.recover = 0

[State 1200,End]
type = ChangeState
trigger1 = time = 1
value = 310
ctrl = 0

[Statedef 581]
type = C
movetype = A
physics = C
anim = 580
velset = 0, 0
ctrl = 0

[state 1300]
type = Width
trigger1 = 1
edge = 80,60

[State 501,playsnd]
type = playsnd
trigger1 = animelem = 2
value = 10,0

[State 501,coner]
type = velset
trigger1 = time = 0 && BackEdgeDist < 50
x = 60
[State 501,coner]
type = velset
trigger1 = time = 1
x = 0

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 60,0
time = 30

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50,-60
time = 10

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = -10,-85
time = 1

[State 911, 1]
type = TargetLifeAdd
Trigger1 = AnimElem = 3
value = -120-random/10

[State 1200,End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 582]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 501,playsnd]
type = playsnd
trigger1 = alive
trigger1 = random < 400
trigger1 = name = "chunli"
trigger1 = AnimElem = 3
value = 5000,ifelse(random<300,1,2)

[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 581

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

[State 1220,velset]
type = velset
trigger1 = animelemtime(3) = 1
y = -7
x = 3
[State 1220,velset]
type = veladd
trigger1 = vel y != 0
trigger1 = animelemtime(3) >= 1
y = 0.4

[State 501,velset]
type = velset
trigger1 = animtime = 0
y = -10

[State 1335,SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100


;air
;AIR THROW
[Statedef 900]
type = A
movetype = A
physics = A
ctrl = 0
anim = 900

[State 900,HitDef]
type = Hitdef
trigger1 = Time = 0
trigger1 = P2StateNo != [150,155]
attr = A, NT
getpower =  0
givepower = 20
hitflag = AF
priority = 4,Miss
numhits = 1
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 910
p2stateno = 920
p2getp1state = 1
hitsound = S800, 0
fall = 1
fall.recover = 0

[State 900,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 2

[State 900,ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52


;------------------- ¬Œ÷
[Statedef 910]
type = A
movetype = A
physics = N
anim = 910

[State 805,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 920,vel]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 920,vel]
type = VelSet
trigger1 = time >= 11
x = 1
y = 3
[State 920,vel]
type = VelSet
trigger1 = time >= 15
y = 6
[State 920,vel]
type = VelSet
trigger1 = time >= 20
y = 9
[State 920,vel]
type = VelSet
trigger1 = time >= 25
y = 12

[State 910,Gravity]
type = Gravity
trigger1 = time >= 10

[State 910,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = -20,-70
time = 10
[State 910,TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50,-20
time = 4

[State 960,6]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52

;air throw P2 state
[Statedef 920]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 810,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 920,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 920

[State 920,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -2

[State 920,vel]
type = VelSet
trigger1 = time >= 11
x = -5
y = 4
[State 920,vel]
type = VelSet
trigger1 = time >= 15
y = 6
[State 920,vel]
type = VelSet
trigger1 = time >= 20
y = 8
[State 920,vel]
type = VelSet
trigger1 = time >= 25
y = 12

[State 920,SelfState]
type = Lifeadd
trigger1 = Vel Y > 0 && Pos Y >= 0
value = - 100

[State 1220,EnvShake]
type = EnvShake
trigger1 = Vel Y > 0 && Pos Y >= 0
time = 28

[State 920,SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100


;[State 1310,TargetBind]
;type = turn
;trigger1 = time = 0
;persistent = 0 

;air
;AIR THROW
[Statedef 950]
type = A
movetype = A
physics = A
ctrl = 0
anim = 900

[State 900,HitDef]
type = Hitdef
trigger1 = Time = 0
trigger1 = P2StateNo != [150,155]
attr = A, NT
getpower =  0
givepower = 20
hitflag = AF
priority = 4,Miss
numhits = 1
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 960
p2stateno = 970
p2getp1state = 1
hitsound = S800, 0
fall = 1
fall.recover = 0

[State 900,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800, 2

[State 900,ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52


;------------------- ¬Œ÷
[Statedef 960]
type = A
movetype = A
physics = N
anim = 910

[State 1310,TargetBind]
type = turn
trigger1 = time = 0
persistent = 0 

[State 805,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 920,vel]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 920,vel]
type = VelSet
trigger1 = time >= 11
x = 1
y = 3
[State 920,vel]
type = VelSet
trigger1 = time >= 15
y = 6
[State 920,vel]
type = VelSet
trigger1 = time >= 20
y = 9
[State 920,vel]
type = VelSet
trigger1 = time >= 25
y = 12

[State 910,Gravity]
type = Gravity
trigger1 = time >= 10

[State 910,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = -20,-70
time = 10
[State 910,TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50,-20
time = 4

[State 960,6]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52

;air throw P2 state
[Statedef 970]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 1310,TargetBind]
type = turn
trigger1 = time = 0
persistent = 0 

[State 810,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 920,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 920

[State 920,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -2

[State 920,vel]
type = VelSet
trigger1 = time >= 11
x = -5
y = 4
[State 920,vel]
type = VelSet
trigger1 = time >= 15
y = 6
[State 920,vel]
type = VelSet
trigger1 = time >= 20
y = 8
[State 920,vel]
type = VelSet
trigger1 = time >= 25
y = 12

[State 920,SelfState]
type = Lifeadd
trigger1 = Vel Y > 0 && Pos Y >= 0
value = - 100

[State 1220,EnvShake]
type = EnvShake
trigger1 = Vel Y > 0 && Pos Y >= 0
time = 28

[State 920,SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100

;===========================================
[Statedef 550]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0

[State 1200,HitDef]
type = Hitdef
trigger1 = Time = 0 && P2bodydist X <= 25 && P2statetype != A && P2statetype != L && P2movetype != H && statetype != A && P2stateno != 50 && P2stateno != 51 
;trigger1 = command = "holdfwd" && command = "y"
attr = S, NT		
getpower = 60
givepower = 20
hitflag = M-			;M-
guardflag = -1			;None
priority = 3,miss
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 551
p2stateno = 552
fall = 1
fall.recover = 0

[State 1200,End]
type = ChangeState
trigger1 = time = 1
value = 0
ctrl = 1

[Statedef 551]
type = S
movetype = A
physics = S
anim = 550
velset = 0, 0
ctrl = 0

[state 1300]
type = Width
trigger1 = 1
edge = 80,60

[State 501,playsnd]
type = playsnd
trigger1 = animelem = 1
value = 10,1

[State 501,playsnd]
type = playsnd
trigger1 = AnimElem = 8
value = F5,1

[State 1220,EnvShake]
type = EnvShake
trigger1 = animelem = 8
time = 28

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40,0
time = 30

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 45,-55
time = 10

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 70,-70
time = 16

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 23,-105
time = 20

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = 85,-65
time = 8

[State 1310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = 109,0
time = 17

[state explod]
type = explod
trigger1 = AnimElem = 8
sprpriority = 3
anim = F2
pos = 20,5
postype = p2 

[State 911, 1]
type = TargetLifeAdd
Trigger1 = AnimElem = 9
value = -230

[State 1200,End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 552]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 910, 0]
type = ChangeAnim2
Trigger1 = Time = 0 
value = 551

[State 501,playsnd]
type = playsnd
trigger1 = alive
trigger1 = random <400
trigger1 = name = "chunli"
trigger1 = AnimElem = 8
value = 5000,ifelse(random<300,1,2)

[State 1215,SprPriority]
type = SprPriority
trigger1 = time >= 0
value = -1

[State 1220,velset]
type = velset
trigger1 = animelemtime(8) = 18
y = -5
x = -2
[State 1220,velset]
type = veladd
trigger1 = vel y != 0
trigger1 = animelemtime(8) >= 18
y = 0.4

[State 501,velset]
type = velset
trigger1 = animtime = 0
y = -10

[State 1335,SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100

