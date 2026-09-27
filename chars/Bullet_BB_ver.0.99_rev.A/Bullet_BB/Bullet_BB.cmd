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
command.buffer.time = 5

;-| Astral Heat |----------------------------------------------------------
[Command]
name = "Hard_Kill_Bringer"
command = ~F, D, B, F, a
time = 30

;-| Distortion Drive |-----------------------------------------------------
[Command]
name = "Rage_Aggressor"
command = ~D, F, D, B, b
time = 30

[Command]
name = "Serpentine_Assault"
command = ~U, B, D, F, U, B, D, F, x
time = 60
buffer.time = 60

[Command]
name = "Serpentine_Assault"
command = ~U, F, D, B, U, F, D, B, x
time = 60
buffer.time = 60

[Command]
name = "Frangible_Engage_Blackout"
command = ~U, B, D, F, U, B, D, F, U, B, D, F, a
time = 60
buffer.time = 60

[Command]
name = "Frangible_Engage_Blackout"
command = ~U, F, D, B, U, F, D, B, U, F, D, B, a
time = 60
buffer.time = 60

;-| Special Motions |------------------------------------------------------
[Command]
name = "After_Burner"
command = ~D, DB, B, a

[Command]
name = "Flechette_Engage"
command = ~F, D, DF, a

[Command]
name = "Snap_Hands_Fist"
command = ~F, D, DF, b

[Command]
name = "Piercing_Engage"
command = ~D, DF, F, a

[Command]
name = "Miquelet_Capture"
command = ~B, D, F, b
time = 20

[Command]
name = "Explode_Engage"
command = ~D, D, a

[Command]
name = "Cutting_Shear"
command = ~F, D, DF, y

[Command]
name = "Flint_Shooter"
command = ~D, DF, F, x

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "Crush_Trigger"
command = x+y
time = 1

[Command]
name = "Rapid"
command = x+a+b+y
time = 1

[Command]
name = "Break_Burst"
command = z+a
time = 1

[Command]
name = "Throw"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "Assault"
command = /F, x+y
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "recovery"
command = /b
time = 1

[Command]
name = "recovery"
command = /x
time = 1

[Command]
name = "recovery"
command = /y
time = 1

[Command]
name = "Throw"
command = z
time = 1

[Command]
name = "Rapid"
command = c
time = 1

[Command]
name = "IG_B"
command = B
time = 1

[Command]
name = "IG_DB"
command = DB
time = 1

;System Default
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
name = "up"
command = U
time = 1

[Command]
name = "forward"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "down"
command = D
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "forward" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
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
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Command]
name = "High_Jump"
command = $D, $U
time = 10

;-------------------------------------------------------------------------------
[Statedef -1]

[State -1, VarAdd Instant Guard]
type = VarAdd
triggerall = !AILevel
trigger1 = var(22)
var(22)  = -1
ignorehitpause = 1

[State -1, VarSet Instant Guard]
type = VarSet
triggerall = !AILevel
trigger1 = var(22) < 0
var(22)  = 0
ignorehitpause = 1

[State -1, VarAdd Instant Guard]
type = VarSet
triggerall = !var(22)
triggerall = !AILevel
trigger1 = command = "IG_B" || command = "IG_DB"
var(22) = 8
ignorehitpause = 1

[State -1, Taunt/Test State]
type = ChangeState
value = 195
triggerall = !AILevel
triggerall = command = "start"
trigger1 = statetype != A && ctrl

;-------------------------------------------------------------------------------
[State -1, Hard Kill Bringer]
type = ChangeState
value = 3500
triggerall = !AILevel
triggerall = power >= 2000
triggerall = command = "Hard_Kill_Bringer"
triggerall = enemynear,life <= ceil(enemynear,LifeMax*0.35)
triggerall = ((roundsexisted >= (helper(9999),var(50)-1)) && var(48) != 0) || (teammode = Turns)
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 221 && movecontact
trigger8 = stateno = 222 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 425 && movecontact
trigger12 = stateno = 815 && time > 0
trigger13 = stateno = 825 && movecontact

[State -1, Blackout]
type = VarSet
triggerall = !AILevel
triggerall = power >= 1000
triggerall = command = "Frangible_Engage_Blackout"
triggerall = numtarget(3100) = 1
trigger1 = stateno = 3160
trigger1 = animelemtime(17) >= 0
trigger1 = target(3100), alive
var(37) = 1
ignorehitpause = 1

[State -1, Frangible Engage]
type = ChangeState
value = 3150
triggerall = !AILevel
triggerall = helper(9999),var(28) > 0
triggerall = command = "Frangible_Engage_Blackout"
triggerall = numtarget(3100) = 1
trigger1 = stateno = 3140
trigger1 = animelemtime(31) >= 0
trigger1 = animelemtime(32) < 0
trigger1 = target(3100),alive

[State -1, Serpentine Assault]
type = ChangeState
value = 3100
triggerall = !AILevel
triggerall = power >= 1000
triggerall = command = "Serpentine_Assault"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1) || (stateno = 40)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 221 && movecontact
trigger8 = stateno = 222 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 425 && movecontact
trigger12 = stateno = 815 && time > 0
trigger13 = stateno = 825 && movecontact

[State -1, Rage Aggressor]
type = ChangeState
value = 3000
triggerall = !AILevel
triggerall = power >= 1000
triggerall = command = "Rage_Aggressor"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 221 && movecontact
trigger8 = stateno = 222 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 425 && movecontact
trigger12 = stateno = 815 && time > 0
trigger13 = stateno = 825 && movecontact

[State -1, After Burner]
type = ChangeState
value = 1500
triggerall = !AILevel
triggerall = command = "After_Burner"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 221 && movecontact
trigger8 = stateno = 222 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 425 && movecontact
trigger12 = stateno = 815 && time > 0
trigger13 = stateno = 825 && movecontact

[State -1, Flechette Engage]
type = ChangeState
value = 1450
triggerall = !AILevel
triggerall = command = "Flechette_Engage"
triggerall = helper(9999),var(28) > 0
trigger1 = stateno = 1430
trigger1 = animelemtime(8) >= 0
trigger1 = animelemtime(9) < 0

[State -1, (Air) Snap Hands Fist]
type = ChangeState
value = 1420
triggerall = !AILevel
triggerall = command = "Snap_Hands_Fist"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) <= -5
trigger3 = stateno = 225 && movecontact
trigger4 = stateno = 600 && movecontact
trigger5 = stateno = 610 && movecontact
trigger6 = stateno = 620 && movecontact
trigger7 = stateno = 810 && movecontact
trigger8 = stateno = 860 && movecontact

[State -1, Snap Hands Fist]
type = ChangeState
value = 1400
triggerall = !AILevel
triggerall = command = "Snap_Hands_Fist"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 221 && movecontact
trigger8 = stateno = 222 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 425 && movecontact
trigger12 = stateno = 815 && time > 0
trigger13 = stateno = 825 && movecontact

[State -1, Piercing Engage]
type = ChangeState
value = 1350
triggerall = !AILevel
triggerall = command = "Piercing_Engage"
triggerall = helper(9999),var(28) > 0
trigger1 = stateno = 1320
trigger1 = animelemtime(3) > 3
trigger1 = animelemtime(4) < 0

[State -1, Miquelet Capture]
type = ChangeState
value = 1300
triggerall = !AILevel
triggerall = command = "Miquelet_Capture"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 221 && movecontact
trigger8 = stateno = 222 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 425 && movecontact
trigger12 = stateno = 815 && time > 0
trigger13 = stateno = 825 && movecontact

[State -1, Explode Engage]
type = ChangeState
value = 1250
triggerall = !AILevel
triggerall = command = "Explode_Engage"
triggerall = helper(9999),var(28) > 0
trigger1 = stateno = 1220
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(4) < 0

[State -1, Cutting Shear]
type = ChangeState
value = 1200
triggerall = !AILevel
triggerall = command = "Cutting_Shear"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 221 && movecontact
trigger8 = stateno = 222 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 425 && movecontact
trigger12 = stateno = 815 && time > 0
trigger13 = stateno = 825 && movecontact

[State -1, Flint Shooter]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = command = "Flint_Shooter"
triggerall = numhelper(1101) = 0
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 221 && movecontact
trigger8 = stateno = 222 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 425 && movecontact
trigger12 = stateno = 815 && time > 0
trigger13 = stateno = 825 && movecontact

[State -1, Wadcutter Engage]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = command = "a"
triggerall = helper(9999),var(28) > 0
trigger1 = stateno = 285
trigger1 = animelemtime(5) >= 0
trigger2 = var(28) = 1
trigger2 = stateno = 239
trigger2 = animelemtime(3) >= 0
trigger3 = var(28) = 1
trigger3 = stateno = 434
trigger3 = animelemtime(8) >= 0

[State -1, Overdrive]
type = ChangeState
value = 2400
triggerall = !AILevel
triggerall = fvar(30) >= 10000
triggerall = command = "Break_Burst"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)

[State -1, Overdrive Cancel]
type = ChangeState
value = 2405
triggerall = !AILevel
triggerall = fvar(30) >= 10000
triggerall = command = "Break_Burst"
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 222 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 425 && movecontact
trigger10 = stateno = 825 && movecontact

[State -1, (Air) Overdrive]
type = ChangeState
value = 2410
triggerall = !AILevel
triggerall = fvar(30) >= 10000
triggerall = command = "Break_Burst"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) <= -5

[State -1, (Air) Overdrive Cancel]
type = ChangeState
value = 2415
triggerall = !AILevel
triggerall = fvar(30) >= 10000
triggerall = command = "Break_Burst"
trigger1 = stateno = 225 && movecontact
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 810 && movecontact
trigger6 = stateno = 860 && movecontact

[State -1, Break Burst]
type = ChangeState
value = 2500
triggerall = alive
triggerall = !AILevel
triggerall = var(40) >= 2
triggerall = var(58) = 0
triggerall = fvar(30) >= 10000
triggerall = stateno != [2500,2510]
triggerall = command = "Break_Burst" || command = "start"
trigger1 = hitshakeover
trigger1 = movetype = H
trigger2 = (stateno != [5000,5999]) || time >= 1

[State -1, Crush Trigger]
type = ChangeState
value = 2300
triggerall = !AILevel
triggerall = power >= 500
triggerall = command = "Crush_Trigger"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 221 && movecontact
trigger8 = stateno = 222 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 425 && movecontact
trigger12 = stateno = 815 && time > 0
trigger13 = stateno = 825 && movecontact

[State -1, Assault Counter]
type = ChangeState
value = 2000
triggerall = alive
triggerall = !AILevel
triggerall = command = "Assault"
triggerall = power >= 1000
triggerall = stateno = [150,153]
trigger1 = ((!hitshakeover) || (hitshakeover))
trigger1 = movetype = H

[State -1, Throw]
type = ChangeState
value = 800
triggerall = !AILevel
triggerall = command = "Throw"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact

[State -1, (Air) Throw]
type = ChangeState
value = 850
triggerall = !AILevel
triggerall = command = "Throw"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) <= -5
trigger3 = stateno = 600 && movecontact

[State -1, Rapid Cancel]
type = ChangeState
value = 2200
triggerall = !AILevel
trigger1 = power >= 1000
trigger1 = command = "Rapid"
trigger1 = statetype = S || statetype = C
trigger1 = var(20) = 1

[State -1, (Air) Rapid Cancel]
type = ChangeState
value = 2210
triggerall = !AILevel
trigger1 = power >= 1000
trigger1 = command = "Rapid"
trigger1 = statetype = A
trigger1 = var(20) = 1

[State -1, Ground Recovery (Forward)]
type = ChangeState
value = 5205
triggerall = alive
triggerall = !AILevel
triggerall = command = "holdfwd"
triggerall = command = "recovery"
triggerall = statetype = L
trigger1 = stateno = 5110
trigger1 = anim = [5110,5111]
trigger1 = time >= 0
trigger2 = stateno = 5120
trigger2 = anim = [5110,5111]
trigger2 = time >= 0

[State -1, Ground Recovery (Backward)]
type = ChangeState
value = 5206
triggerall = alive
triggerall = !AILevel
triggerall = command = "holdback"
triggerall = command = "recovery"
triggerall = statetype = L
trigger1 = stateno = 5110
trigger1 = anim = [5110,5111]
trigger1 = time >= 0
trigger2 = stateno = 5120
trigger2 = anim = [5110,5111]
trigger2 = time >= 0

[State -1, Ground Recovery (Neutral)]
type = ChangeState
value = 5200
triggerall = alive
triggerall = !AILevel
triggerall = command = "recovery"
triggerall = command != "holddown"
triggerall = statetype = L
trigger1 = stateno = 5100
trigger1 = time >= 0
trigger2 = stateno = 5110
trigger2 = anim = [5110,5111]
trigger2 = time >= 0
trigger3 = stateno = 5120
trigger3 = anim = [5110,5111]
trigger3 = time >= 0
trigger4 = stateno = 5072
trigger4 = time >= 0

[State -1, Break Burst]
type = ChangeState
value = 2500
triggerall = alive
triggerall = !AILevel
triggerall = var(40) >= 2
triggerall = var(58) = 0
triggerall = fvar(30) >= 10000
triggerall = stateno != [2500,2510]
triggerall = stateno != [5200,5299]
triggerall = command = "Break_Burst" || command = "start"
triggerall = movetype = H
trigger1 = hitshakeover
trigger2 = time >= 1

[State -1, Dash (Forward)]
type = ChangeState
value = 100
triggerall = !AILevel
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Dash (Backward)]
type = ChangeState
value = 105
triggerall = !AILevel
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Air Dash (Forward)]
type = ChangeState
value = 110
triggerall = !AILevel
triggerall = var(4) < 2
triggerall = var(5) = 0
triggerall = command = "FF"
triggerall = statetype = A
trigger1 = ctrl

[State -1, Air Dash (Backward)]
type = ChangeState
value = 115
triggerall = !AILevel
triggerall = var(4) < 2
triggerall = var(5) = 0
triggerall = command = "BB"
triggerall = statetype = A
trigger1 = ctrl

[State -1, High Jump]
type = ChangeState
value = 900
triggerall = !AILevel
triggerall = var(3) = 0
triggerall = command = "High_Jump"
triggerall = statetype != A 
trigger1 = ctrl
trigger2 = (stateno = 100 && time < 10) || (stateno = 101) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 400 && movecontact

[State -1, Jump Start]
type = ChangeState
value = 40
triggerall = !AILevel
triggerall = command = "holdup"
triggerall = statetype != A 
trigger1 = ctrl
trigger2 = (stateno = 100 && (time = [1,9])) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 400 && movecontact

[State -1, (Air) Jump Start]
type = ChangeState
value = 45
triggerall = command = "holdup"
triggerall = !AILevel
triggerall = var(4) != 2
triggerall = var(5) = 0
trigger1 = stateno = 225 && movecontact
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact

[State -1, Guard Start]
type = ChangeState
value = 120
triggerall = !AILevel
triggerall = var(21) = 1
triggerall = command = "holdback"
trigger1 = statetype = S || statetype = C || statetype = A
trigger1 = ctrl
trigger2 = fvar(29) > 0
trigger2 = stateno = 100 && (time = [1,6])

[State -1, 3C]
type = ChangeState
value = 425
triggerall = command = "b" && command = "holddownfwd"
triggerall = !AILevel
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 222 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact

[State -1, 6A]
type = ChangeState
value = 205
triggerall = command = "x" && command = "holdfwd"
triggerall = !AILevel
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 400 && movecontact

[State -1, 6B]
type = ChangeState
value = 215
triggerall = command = "y" && command = "holdfwd"
triggerall = !AILevel
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact

[State -1, 6C]
type = ChangeState
value = 225
triggerall = command = "b" && command = "holdfwd"
triggerall = !AILevel
trigger1 = statetype = S && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 222 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact

[State -1, 6D]
type = ChangeState
value = 235
triggerall = !AILevel
triggerall = command = "a" && command = "holdfwd"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 222 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 420 && animelemtime(12) >= 1 && movecontact

;[State -1, j.2C]
;type = ChangeState
;value = 625
;triggerall = !AILevel
;triggerall = command = "b" && command = "holddown"
;trigger1 = statetype = A && ctrl
;trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)

[State -1, 5A]
type = ChangeState
value = 200
triggerall = !AILevel
triggerall = command = "x" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = (helper(9999),var(1) < 3)
trigger3 = stateno = 200 && movecontact
trigger4 = (helper(9999),var(1) < 3)
trigger4 = stateno = 200 && animelemtime(5) >= 0
trigger5 = (helper(9999),var(1) < 3)
trigger5 = stateno = 400 && movecontact

[State -1, 5B]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = command = "y" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact && prevstateno != 210

[State -1, 5C]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = command = "b" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 205 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact

[State -1, 5D]
type = ChangeState
value = 230
triggerall = !AILevel
triggerall = command = "a" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 222 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 420 && animelemtime(12) >= 1 && movecontact

[State -1, 2A]
type = ChangeState
value = 400
triggerall = !AILevel
triggerall = command = "x" && command = "holddown"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = (helper(9999),var(1) < 3)
trigger3 = stateno = 200 && movecontact
trigger4 = (helper(9999),var(1) < 3)
trigger4 = stateno = 400 && movecontact
trigger5 = (helper(9999),var(1) < 3)
trigger5 = stateno = 400 && animelemtime(4) >= 0

[State -1, 2B]
type = ChangeState
value = 410
triggerall = !AILevel
triggerall = command = "y" && command = "holddown"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact && prevstateno != 410
trigger5 = stateno = 400 && movecontact

[State -1, 2C]
type = ChangeState
value = 420
triggerall = !AILevel
triggerall = command = "b" && command = "holddown"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 222 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact

[State -1, 2D]
type = ChangeState
value = 430
triggerall = !AILevel
triggerall = command = "a" && command = "holddown"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 222 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 420 && animelemtime(12) >= 1 && movecontact

[State -1, j.5A]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) <= -5
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 600 && animelemtime(5) >= 0
trigger5 = stateno = 610 && movecontact

[State -1, j.5B]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) <= -5
trigger3 = stateno = 600 && movecontact

[State -1, j.5C]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) <= -5
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact

[State -1, j.5D]
type = ChangeState
value = 630
triggerall = !AILevel
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) <= -5
trigger3 = stateno = 600 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 620 && movecontact

;----------------------------------------------------
;----------------------------------------------------
;----------------------------------------------------
;--------------------AI Commands---------------------
;----------------------------------------------------
;----------------------------------------------------
;----------------------------------------------------

;Enemy = AI
[State -1, AI Detect On]
type = VarSet
triggerall = numenemy > 0
trigger1 = (enemynear,AILevel)
trigger1 = (enemynear,authorname != "Ares")
;trigger2 = teammode = Simul
;trigger3 = teammode = Turns
var(59) = (enemynear,AILevel)
ignorehitpause = 1

;Enemy = Player
[State -1, AI Detect Off]
type = VarSet
triggerall = numenemy > 0
trigger1 = !(enemynear,AILevel)
trigger2 = (enemynear,authorname = "Ares")
;trigger1 = teammode = Single
var(59) = 0
ignorehitpause = 1

[State -1, AI Guard Reset]
type = VarSet
triggerall = numenemy
trigger1 = p2statetype = S
fvar(38) = 0
ignorehitpause = 1

[State -1, AI Guard Low Var]
type = VarSet
triggerall = numenemy
trigger1 = p2statetype = C
trigger2 = p2statetype != A
trigger2 = random%20 = 0
fvar(38) = 1
ignorehitpause = 1

[State -1, AI Guard High Var]
type = VarSet
trigger1 = p2statetype = A
trigger2 = (enemynear,authorname = "Ares")
trigger2 = p2name = "Bullet_BB"
trigger2 = p2stateno = 205
fvar(38) = 2
ignorehitpause = 1

[State -1, AI Guard Special]
type = VarSet
trigger1 = p2name = "I-NO"
trigger1 = p2stateno = 3500
fvar(38) = 3
ignorehitpause = 1

[State -1, AI Barrier Off]
type = VarSet
triggerall = AILevel
triggerall = random < AILevel*12 || AILevel > 7 && random <= AILevel*100
triggerall = roundstate = 2
triggerall = var(21) = 1
triggerall = stateno = [120,155]
trigger1 = fvar(29) > 1000
trigger1 = enemynear,animtime < -6 && random%5 = 0
trigger1 = (enemynear,HitDefAttr = SCA, NT, ST, HT)  || (enemy,numhelper = 0) || (enemy,numproj = 0)
trigger2 = !inguarddist || enemynear,animtime >= -6
var(21) = 0

[State -1, AI Barrier On]
type = VarSet
triggerall = AILevel
triggerall = random < AILevel*12 || AILevel > 7 && random <= AILevel*100
triggerall = roundstate = 2
triggerall = var(21) = 0
;trigger1 = (backedgebodydist < 100)
trigger1 = inguarddist
trigger1 = enemynear,movetype = A
trigger1 = ((enemynear,HitDefAttr != SCA, NT, ST, HT)  || (enemynear,numhelper > 0) || (enemynear,numproj > 0) || (enemynear,animtime < -6)  || (enemynear,time = [0,5]))
var(21) = 1

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;------------------------------AI MOVES-----------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------

[State -1, AI Hard Kill Bringer]
type = ChangeState
value = 3500
triggerall = AILevel
triggerall = power >= 2000
triggerall = statetype != A
triggerall = enemynear,life <= ceil(enemynear,LifeMax*0.35)
triggerall = (roundsexisted >= (helper(9999),var(50)-1)) || (teammode = Turns)
;Back Throw Combo
trigger1 = random < AILevel*18 || AILevel > 7 && random <= AILevel*100
trigger1 = fvar(39) = 820
trigger1 = numtarget(1121) = 1
trigger1 = (stateno = [100,101])

[State -1, AI Blackout]
type = VarSet
triggerall = AILevel > 6
triggerall = power >= 1000
triggerall = numtarget(3100) = 1
trigger1 = stateno = 3160
trigger1 = animelemtime(17) >= 0
trigger1 = target(3100), alive
var(37) = 1
ignorehitpause = 1

[State -1, AI Serpentine Assault]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = AILevel > 6 || random < AILevel*1
trigger1 = ctrl || (stateno = [10,21]) || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger1 = inguarddist
trigger1 = enemynear,movetype = A
trigger1 = enemynear,statetype != A
trigger1 = p2bodydist X <= 120

[State -1, AI Rage Aggressor]
type = ChangeState
value = 3000
triggerall = AILevel
triggerall = power >= 1000
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = AILevel > 6 && random < AILevel*100 || random < AILevel*1
trigger1 = fvar(39) = 420
trigger1 = ctrl || (stateno = [10,21]) || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger1 = p2stateno = 6458

[State -1, AI Frangible Engage]
type = ChangeState
value = 3150
triggerall = AILevel > 6
triggerall = power >= 1000
triggerall = helper(9999),var(28) > 0
triggerall = numtarget(3100) = 1
trigger1 = stateno = 3140
trigger1 = animelemtime(31) >= 0
trigger1 = animelemtime(32) < 0
trigger1 = target(3100),alive

[State -1, AI After Burner]
type = ChangeState
value = 1500
triggerall = AILevel
triggerall = helper(9999),var(28) < 2
triggerall = numhelper(1101) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !inguarddist
trigger1 = random < AILevel*3
trigger1 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2stateno != [100,101]
trigger1 = p2bodydist X > 700
trigger2 = random < AILevel*3 || AILevel > 7 && random <= AILevel*100
trigger2 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger2 = prevstateno = 2510
trigger2 = !enemynear,ctrl
trigger2 = p2statetype = A
trigger2 = p2movetype = H

[State -1, AI Flechette Engage]
type = ChangeState
value = 1450
triggerall = AILevel
triggerall = random < AILevel*1 || AILevel > 6
triggerall = stateno = 1430
triggerall = animelemtime(8) >= 0 && animelemtime(9) < 0
trigger1 = helper(9999),var(28) > 0

[State -1, AI (Air) Snap Hands Fist]
type = ChangeState
value = 1420
triggerall = random < AILevel*30 || AILevel > 6
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = stateno = 810 && movecontact
trigger1 = frontedgebodydist < 100
trigger2 = stateno = 860 && movecontact
trigger2 = frontedgebodydist < 100

[State -1, AI Snap Hands Fist]
type = ChangeState
value = 1400
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = random < AILevel*30 || AILevel > 6
trigger1 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger1 = p2bodydist X - (enemynear,vel X + vel X)*10 = [0,300]
;trigger1 = p2bodydist Y = [-170 + (p2bodydist X <= 50)*30 + (p2bodydist X <= 300)*30 + (p2bodydist X <= 150)*30,-20]
trigger1 = p2statetype = A
trigger1 = (!(enemynear,ctrl) && (enemynear,animtime <= -10) && (p2movetype = A)) || (p2stateno = 110 && enemynear,time <= 15) || (p2stateno = 115 && enemynear,time <= 15) || (enemynear,prevstateno = [40,49])
;6B String
trigger2 = fvar(39) = 0
trigger2 = stateno = 215 && movehit
trigger2 = backedgebodydist <= 200
;Overdrive Combo
trigger3 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger3 = fvar(39) = 420
trigger3 = stateno = 215 & movehit

[State -1, AI Piercing Engage]
type = ChangeState
value = 1350
triggerall = AILevel
triggerall = AILevel > 6 && random < AILevel*100 || random < AILevel*1
triggerall = stateno = 1320
triggerall = animelemtime(3) > 3 && animelemtime(4) < 0
trigger1 = helper(9999),var(28) > 0

[State -1, AI Miquelet Capture]
type = ChangeState
value = 1300
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
;Overdrive Combo
trigger1 = AILevel > 7
trigger1 = fvar(39) = 420
trigger1 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger1 = prevstateno = 1470
;Back Throw Combo
trigger2 = random < AILevel*10 || AILevel > 6
trigger2 = stateno = 425 && movehit

[State -1, AI Cutting Shear]
type = ChangeState
value = 1200
triggerall = AILevel
triggerall = random < AILevel*1 || AILevel > 6 && random < AILevel*100
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X = [0,240 + ((enemynear,vel X + vel X)*8)]
trigger1 = ctrl || (stateno = [10,21]) || (stateno = [100,101]) || (stateno = 52 && time > 1) || ((stateno = 200 || stateno = 205 || stateno = 210 || (stateno = [221,222]) || stateno = 400 || stateno = 410 || stateno = 425) && (movereversed || moveguarded))
trigger1 = inguarddist
trigger1 = enemynear,movetype = A
trigger1 = enemynear,animtime <= -16

[State -1, AI Explode Engage]
type = ChangeState
value = 1250
triggerall = AILevel
triggerall = random < AILevel*1 || AILevel > 6
triggerall = roundstate = 2
triggerall = stateno = 1220
triggerall = animelemtime(2) >= 0 && animelemtime(4) < 0
trigger1 = helper(9999),var(28) > 0

[State -1, AI Flint Shooter]
type = ChangeState
value = 1100
triggerall = AILevel
triggerall = numhelper(1101) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !inguarddist || (random < AILevel*3)
trigger1 = random < AILevel*10 || AILevel > 6
trigger1 = stateno = 825 && movehit
trigger2 = random < AILevel*1
trigger2 = helper(9999),var(28) = 1
trigger2 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger2 = p2statetype = S || p2statetype = C
trigger2 = p2movetype != H
trigger2 = p2bodydist X > 400

[State -1, AI Wadcutter Engage]
type = ChangeState
value = 1000
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = helper(9999),var(28) > 0
triggerall = fvar(39) = 0
trigger1 = stateno = 285
trigger1 = animelemtime(5) >= 0
trigger2 = var(28) = 1
trigger2 = stateno = 239
trigger2 = animelemtime(3) >= 0
trigger3 = var(28) = 1
trigger3 = stateno = 434
trigger3 = animelemtime(8) >= 0

[State -1, AI Break Burst]
type = ChangeState
value = 2500
triggerall = AILevel > 4
triggerall = random < AILevel*25 || AILevel > 6
triggerall = life <= ceil(LifeMax*0.35)
triggerall = alive
triggerall = roundstate = 2
triggerall = var(40) >= 2
triggerall = var(58) = 0
triggerall = fvar(30) >= 10000
triggerall = stateno != [150,159]
triggerall = stateno != [2500,2510]
triggerall = stateno != [5200,5299]
triggerall = p2movetype = A
triggerall = p2bodydist X = [-180,180]
triggerall = p2bodydist Y = [-180,180]
triggerall = p2stateno > 199
triggerall = !enemynear,ctrl
triggerall = enemynear,animtime <- 22
triggerall = movetype = H
trigger1 = hitshakeover
trigger2 = time >= 1

[State -1, AI Overdrive]
type = ChangeState
value = 2400
triggerall = AILevel > 4
triggerall = random < AILevel*25 || AILevel > 6
triggerall = alive
triggerall = roundstate = 2
triggerall = fvar(30) >= 10000
trigger1 = fvar(39) = 420
trigger1 = statetype != A
trigger1 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)

[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = AILevel
triggerall = ifelse(var(59) = 0, random < AILevel*5, random < AILevel*16)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !inguarddist || (random < AILevel*3)
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2stateno != 5120
triggerall = p2bodydist x < 110
triggerall = enemynear,gethitvar(fall) = 0
trigger1 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger2 = stateno = 200 && moveguarded
trigger3 = stateno = 400 && moveguarded

[State -1, AI Rapid Cancel]
type = ChangeState
value = 2200
triggerall = AILevel > 4 && random < AILevel*3 || AILevel > 7 && random <= AILevel*100
triggerall = power >= 1000
triggerall = statetype = S || statetype = C
triggerall = var(20) = 1
trigger1 = stateno = 434 && moveguarded
trigger2 = stateno = 1200 && moveguarded

[State -1, AI (Air) Rapid Cancel]
type = ChangeState
value = 2210
triggerall = AILevel > 4 && random < AILevel*3 || AILevel > 7 && random <= AILevel*100
triggerall = power >= 1000
triggerall = statetype = A
triggerall = var(20) = 1
trigger1 = stateno = 238 && moveguarded
trigger2 = fvar(39) = 420
trigger2 = stateno = 280 && animelemtime(13) > 0 && movehit

[State -1, AI 3C]
type = ChangeState
value = 425
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = random < AILevel*15
trigger1 = power >= 1000 && AILevel >= 7 && random <= AILevel*100 || AILevel < 7 && random <= AILevel*8
trigger1 = (stateno = [221,222]) && moveguarded
trigger2 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger2 = fvar(39) = 820
trigger2 = (stateno = [221,222]) && movecontact

[State -1, AI 6A]
type = ChangeState
value = 205
triggerall = AILevel
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = p2bodydist X = [0,150 + ((enemynear,vel X + vel X)*4)]
trigger1 = random < AILevel*7
trigger1 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger1 = p2statetype = C
trigger2 = random < AILevel*10
trigger2 = stateno = 400 && moveguarded
trigger2 = p2statetype = C
;Back Throw Combo
trigger3 = random < AILevel*18 || AILevel > 7 && random <= AILevel*100
trigger3 = fvar(39) = 820
trigger3 = numtarget(1121) = 1
trigger3 = (stateno = [100,101])

[State -1, AI 6B]
type = ChangeState
value = 215
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
;5B String
trigger1 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger1 = fvar(39) = 0
trigger1 = stateno = 210 & movecontact
trigger1 = p2statetype = A
trigger1 = p2movetype = H
;Overdrive Combo
trigger2 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger2 = fvar(39) = 420
trigger2 = stateno = 210 & movehit
;Throw Combo
trigger3 = random < AILevel*18 || AILevel > 7 && random <= AILevel*100
trigger3 = fvar(39) = 811 || fvar(39) = 42
trigger3 = (stateno = [100,101])
trigger3 = p2statetype = A
trigger3 = p2statetype != L
trigger3 = p2movetype = H
trigger3 = p2bodydist X <= 160
trigger3 = p2bodydist Y + (enemynear,vel Y + enemynear,const(movement.Yaccel))*10 = [-400,50]

[State -1, AI 5A]
type = ChangeState
value = 200
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = 0

[State -1, AI 5B]
type = ChangeState
value = 210
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
;Poke
trigger1 = random < AILevel*7
trigger1 = stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger1 = !inguarddist
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2bodydist X = [110,200 + ((enemynear,vel X + vel X)*8)]
;Enemy Hurt State
trigger2 = random < AILevel*18 || AILevel > 7 && random <= AILevel*100
trigger2 = fvar(39) = 0
trigger2 = numtarget(800) = 0
trigger2 = stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger2 = p2stateno != [5100,5110]
trigger2 = p2stateno != 5200
trigger2 = p2bodydist X = [-20,280 + ((enemynear,vel X + vel X)*8)]
trigger2 = p2bodydist Y + (enemynear,vel Y + enemynear,const(movement.Yaccel))*10 = [-150,50]
trigger2 = p2statetype = A
trigger2 = p2movetype = H
;2A String
trigger3 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger3 = stateno = 400 && (ifelse(var(59) = 0, movecontact, movehit))
trigger3 = p2statetype = A
trigger3 = p2bodydist X = [0,180]
;2B String
trigger4 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger4 = stateno = 410 && (ifelse(var(59) = 0, movecontact, movehit)) && prevstateno != 210
trigger4 = p2statetype != S
trigger4 = p2bodydist X = [0,180]
;Overdrive Combo
trigger5 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger5 = fvar(39) = 420
trigger5 = stateno = 400 & movehit
;Throw Combo
trigger6 = random < AILevel*18 || AILevel > 7 && random <= AILevel*100
trigger6 = (stateno = [100,101])
trigger6 = numtarget(800) = 1
trigger6 = p2bodydist X = [-20,110 + ((enemynear,vel X + vel X)*8)]
trigger6 = p2statetype = A
trigger6 = p2statetype != L
trigger6 = p2movetype = H
trigger6 = p2stateno = 835

[State -1, AI 5C]
type = ChangeState
value = 220
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2bodydist X <= 340
;6A String
trigger1 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger1 = fvar(39) = 0
trigger1 = stateno = 205 && movecontact
;5B String
trigger2 = random < AILevel*25 || AILevel > 7 && random <= AILevel*20
trigger2 = fvar(39) = 0
trigger2 = stateno = 210 && (ifelse(var(59) = 0, movecontact, movehit))
trigger2 = p2statetype != A
;2B String
trigger3 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger3 = fvar(39) = 0
trigger3 = stateno = 410 && (ifelse(var(59) = 0, movecontact, movehit))
trigger3 = p2statetype != A
;Overdrive Combo
trigger4 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger4 = fvar(39) = 420
trigger4 = stateno = 400 & movehit
;Back Throw Combo
trigger5 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger5 = fvar(39) = 820
trigger5 = stateno = 205 && movecontact

[State -1, AI 5D]
type = ChangeState
value = 230
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 420 && animelemtime(12) >= 1 && movehit

[State -1, AI 6D]
type = ChangeState
value = 235
triggerall = AILevel
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist X = [0,200]
trigger1 = random < AILevel*2
trigger1 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger1 = enemynear,anim = [5120,5121]
trigger1 = enemynear,animtime <= -16
trigger2 = random < AILevel*2
trigger2 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger2 = p2stateno = 5200
trigger2 = enemynear,authorname = "Ares"
trigger2 = enemynear,time = [0,7]

[State -1, AI 2A]
type = ChangeState
value = 400
triggerall = AILevel
triggerall = (helper(9999),var(1) < 3)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno != 5120
triggerall = p2bodydist X = [-20,130 + ((enemynear,vel X + vel X)*7)]
trigger1 = random < AILevel*9
trigger1 = ctrl
trigger1 = p2statetype != A
trigger2 = ifelse(var(59) = 0, random < AILevel*10, random < AILevel*1)
trigger2 = stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger2 = p2statetype != A
trigger3 = random < AILevel*7
trigger3 = stateno = 200 && moveguarded
trigger4 = random < AILevel*7
trigger4 = stateno = 400 && moveguarded
;Overdrive Combo
trigger5 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger5 = fvar(39) = 420
trigger5 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger5 = p2stateno = 6236

[State -1, AI 2B]
type = ChangeState
value = 410
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2bodydist X = [0,230]
trigger1 = random < AILevel*10
trigger1 = (statetype != A && ctrl) || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger1 = p2bodydist X = [160,210 + ((enemynear,vel X + vel X)*10)]
trigger1 = p2stateno != 5120
trigger1 = p2movetype != H
trigger2 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger2 = stateno = 200 && (ifelse(var(59) = 0, movecontact, movehit))
trigger3 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger3 = stateno = 210 && (ifelse(var(59) = 0, movecontact, movehit)) && prevstateno != 410
trigger4 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger4 = stateno = 400 && movehit
trigger5 = random < AILevel*12
trigger5 = stateno = 400 && moveguarded

[State -1, AI 2C]
type = ChangeState
value = 420
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
trigger1 = random < AILevel*25 || AILevel > 7 && random <= AILevel*100
trigger1 = (stateno = [221,222]) && movehit
trigger1 = p2statetype != L

[State -1, AI 2D]
type = ChangeState
value = 430
triggerall = AILevel
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist X = [0,200]
trigger1 = random < AILevel*2
trigger1 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger1 = enemynear,anim = [5120,5121]
trigger1 = enemynear,animtime <= -16
trigger2 = random < AILevel*2
trigger2 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger2 = p2stateno = 5200
trigger2 = enemynear,authorname = "Ares"
trigger2 = enemynear,time = [0,7]

[State -1, AI j.5A]
type = ChangeState
value = 600
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = p2bodydist X = [-20,150 + ((enemynear,vel X + vel X)*7)]
triggerall = p2bodydist Y = [-100,50]
trigger1 = random < AILevel*9
trigger1 = ctrl
trigger1 = p2movetype != H

[State -1, AI j.5B]
type = ChangeState
value = 610
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != L
trigger1 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger1 = prevstateno = 41
trigger1 = p2statetype = A
trigger1 = p2movetype = H

[State -1, AI j.5C]
type = ChangeState
value = 620
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != L
trigger1 = random <= AILevel*15 || AILevel > 7 && random <= AILevel*100
trigger1 = stateno = 110 && var(5) >= 5 || stateno = 115 && var(5) <= -5
trigger1 = p2bodydist X = [-20,260 + ((enemynear,vel X + vel X)*7)]
trigger2 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger2 = prevstateno = 43
trigger2 = vel Y >= -10
;6B String
trigger3 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger3 = fvar(39) = 0
trigger3 = prevstateno = 45
trigger4 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger4 = fvar(39) = 811 || fvar(39) = 42
trigger4 = stateno = 610 && movehit
trigger4 = p2statetype = A
trigger4 = p2movetype = H
trigger5 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger5 = fvar(39) >= 812 || fvar(39) = 43
trigger5 = prevstateno = 45
trigger5 = p2statetype = A
trigger5 = p2movetype = H

[State -1, AI j.5D]
type = ChangeState
value = 630
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger1 = fvar(39) = 0
trigger1 = stateno = 620 && movecontact
trigger1 = p2statetype = A
;Throw Combo 1
trigger2 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger2 = var(4) = 2
trigger2 = fvar(39) = 812 || fvar(39) = 43
trigger2 = stateno = 620 && movehit
trigger2 = p2statetype = A
trigger2 = p2movetype = H

;-------------------------------------------------------------------------------
;AI Recovery/Movement
[State -1, AI Walk]
type = ChangeState
value = 21
triggerall = AILevel
triggerall = fvar(38) != 3
triggerall = roundstate = 2
triggerall = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
triggerall = (stateno = 0 && ctrl)
triggerall = statetype != A
triggerall = stateno != [100,101]
triggerall = !inguarddist
trigger1 = p2statetype != L
trigger1 = p2movetype != H
trigger1 = p2bodydist X >= 300
trigger2 = p2statetype = L
trigger2 = p2bodydist X > 200
trigger3 = p2statetype = A
trigger3 = p2movetype = H
trigger3 = p2bodydist X >= 100

[State -1, AI Jump Start]
type = ChangeState
value = 41
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
;Throw Combo
trigger1 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger1 = fvar(39) = 810; || AILevel > 7 && random <= AILevel*100
trigger1 = stateno = 210 && movehit
trigger1 = p2statetype = A
trigger1 = p2bodydist X = [-20,300 + ((enemynear,vel X + vel X)*21)]
trigger1 = p2bodydist Y + (enemynear,vel Y + enemynear,const(movement.Yaccel))*10 = [-500,50]

[State -1, AI Jump Start (Guard)]
type = ChangeState
value = 43
triggerall = AILevel
triggerall = random < AILevel*20
triggerall = roundstate = 2
triggerall = var(59) = 0
triggerall = statetype != A
triggerall = p2bodydist X = [0,350]
trigger1 = random < AILevel*1
trigger1 = (stateno = 200 && moveguarded)
trigger2 = random < AILevel*4
trigger2 = (stateno = 210 && moveguarded)
trigger3 = random < AILevel*4
trigger3 = (stateno = 400 && moveguarded)
trigger4 = random < AILevel*9
trigger4 = ctrl || stateno = 21 || (stateno = [100,101]) || (stateno = 52 && time > 1)
trigger4 = p2stateno = 5200
trigger4 = enemynear,authorname = "Ares"

[State -1, AI Jump Start (Air Dash Forward)]
type = ChangeState
value = 44
triggerall = AILevel
triggerall = random <= AILevel*4
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = ctrl ||( stateno = [20,21]) || stateno = 100 && time = [1,6]
trigger1 = p2stateno > 199
trigger1 = p2statetype != A
trigger1 = p2statetype != L
trigger1 = p2bodydist X >= 400
trigger1 = (enemy,numhelper = 0) || (enemy,numproj = 0)

[State -1, AI (Air) Jump Start]
type = ChangeState
value = 45
triggerall = AILevel
triggerall = roundstate = 2
triggerall = var(4) != 2
triggerall = var(5) = 0
triggerall = statetype = A
;6B String
trigger1 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger1 = fvar(39) = 0
trigger1 = stateno = 610 && movehit
;Throw Combo
trigger2 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger2 = fvar(39) >= 812 || fvar(39) = 43
trigger2 = stateno = 610 && movehit
trigger2 = p2bodydist X <= 200

[State -1, AI High Jump Start]
type = ChangeState
value = 901
triggerall = AILevel
triggerall = roundstate = 2
triggerall = statetype != A
;6B String
trigger1 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger1 = fvar(39) = 0
trigger1 = stateno = 215 && movehit
trigger1 = backedgebodydist > 200
;Throw Combo 1
trigger2 = random <= AILevel*10 || AILevel > 7 && random <= AILevel*100
trigger2 = fvar(39) = 811 || fvar(39) = 42
trigger2 = stateno = 215 && movehit

[State -1, AI Dash (Forward)]
type = ChangeState
value = 100
triggerall = AILevel
triggerall = fvar(38) != 3
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = (ctrl || stateno = 21 || (stateno = 51 && ctrl))
triggerall = stateno != [100,101]
triggerall = !inguarddist
triggerall = !(enemynear,anim = [5120,5121])
trigger1 = random < AILevel*6
trigger1 = p2statetype != L
trigger1 = p2movetype != H
trigger1 = ifelse((helper(9999),var(28) = 2), p2bodydist X > 200, ifelse((helper(9999),var(28) = 1), (p2bodydist X = [0,500]), (p2bodydist X = [0,450])))
trigger1 = p2stateno > 199
trigger1 = !enemynear,ctrl
trigger1 = (enemy,numhelper = 0) || (enemy,numproj = 0)
trigger2 = random < AILevel*6
trigger2 = p2bodydist X > 200 || (p2statetype != L)
trigger2 = p2movetype != H
trigger2 = !enemynear,ctrl || (var(59) = 0 && enemynear,ctrl)
trigger2 = (enemy,numhelper = 0) || (enemy,numproj = 0)
trigger3 = AILevel > 6 && random < AILevel*16 || random < AILevel*4
trigger3 = fvar(39) = 0
trigger3 = numtarget(800) = 0
trigger3 = p2bodydist X > 200
trigger3 = p2movetype = H
trigger3 = !enemynear,ctrl || (var(59) = 0 && enemynear,ctrl)
trigger3 = (enemy,numhelper = 0) || (enemy,numproj = 0)
;Dash after j.5C
trigger4 = random < AILevel*18 || AILevel > 7 && random <= AILevel*100
trigger4 = numtarget(620) = 1
trigger4 = target(620),statetype != A
trigger4 = target(620),statetype != L
;Throw Combo 1
trigger5 = random < AILevel*18 || AILevel > 7 && random <= AILevel*100
trigger5 = p2statetype = A
trigger5 = p2statetype != L
trigger5 = p2movetype = H
trigger5 = numtarget(800) = 1
trigger5 = p2stateno = 835
trigger5 = p2bodydist X = [-20,300 + ((enemynear,vel X + vel X)*21)]
trigger5 = p2bodydist Y + (enemynear,vel Y + enemynear,const(movement.Yaccel))*10 = [-450,50]
;Throw Combo 2
trigger6 = random < AILevel*18 || AILevel > 7 && random <= AILevel*100
trigger6 = fvar(39) = 811 || fvar(39) = 42
trigger6 = p2statetype = A
trigger6 = p2statetype != L
trigger6 = p2movetype = H
;Back Throw Combo
trigger7 = random < AILevel*18 || AILevel > 7 && random <= AILevel*100
trigger7 = fvar(39) = 820
trigger7 = numtarget(1121) = 1
trigger7 = target(1121),vel Y >= 0
trigger7 = p2statetype = A
trigger7 = p2statetype != L
trigger7 = p2movetype = H

[State -1, AI Dash (Backward)]
type = ChangeState
value = 105
triggerall = AILevel
triggerall = random <= AILevel*10 || (AILevel > 6 && random < AILevel*15)
triggerall = fvar(38) != 3
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = (ctrl || stateno = 21 || (stateno = 51 && ctrl))
triggerall = p2bodydist X = [-60,120]
trigger1 = ((p2dist X >= 0) && (backedgebodydist >= 160)) || ((p2dist X < 0) && (frontedgebodydist >= 160))
trigger1 = !((p2dist X > 0) && (facing = enemynear,facing))
trigger1 = p2statetype = L
trigger1 = p2bodydist X < 120
trigger1 = p2stateno = 5120

[State -1, AI Air Dash (Forward)]
type = ChangeState
value = 110
triggerall = AILevel
triggerall = fvar(38) != 3
triggerall = var(4) < 2
triggerall = var(5) = 0
triggerall = roundstate = 2
triggerall = statetype = A
trigger1 = ctrl
trigger1 = prevstateno = 44

[State -1, AI Ground Recovery (Neutral)]
type = ChangeState
value = 5200
triggerall = alive
triggerall = (random <= AILevel*100) || (AILevel > 7)
triggerall = roundstate = 2
triggerall = statetype = L
trigger1 = stateno = 5100
trigger1 = time >= 0
trigger2 = stateno = 5110
trigger2 = anim = [5110,5111]
trigger2 = time >= 0
trigger2 = ((enemynear,movetype = A) || (p2bodydist X <= 100))
trigger3 = stateno = 5120
trigger3 = anim = [5110,5111]
trigger3 = time >= 0
trigger3 = ((enemynear,movetype = A) || (p2bodydist X <= 100))
trigger4 = stateno = 5072
trigger4 = time >= 0
trigger4 = ((enemynear,movetype = A) || (p2bodydist X <= 100))

[State -1, AI Ground Recovery (Forward)]
type = ChangeState
value = 5205
triggerall = alive
triggerall = AILevel
triggerall = (random <= AILevel*100) || fvar(39)
triggerall = fvar(38) != 3
triggerall = roundstate = 2
triggerall = statetype = L
trigger1 = stateno = 5110
trigger1 = anim = [5110,5111]
trigger1 = time >= 0
trigger1 = (backedgebodydist < 90) && (p2bodydist X < 60)
trigger1 = p2movetype = A
trigger2 = stateno = 5120
trigger2 = anim = [5110,5111]
trigger2 = time >= 0
trigger2 = (backedgebodydist < 90) && (p2bodydist X < 60)
trigger2 = p2movetype = A

[State -1, AI Ground Recovery (Backward)]
type = ChangeState
value = 5206
triggerall = alive
triggerall = AILevel
triggerall = fvar(38) != 3
triggerall = roundstate = 2
triggerall = (random <= AILevel*100) || fvar(39)
triggerall = statetype = L
triggerall = backedgebodydist > 150
trigger1 = stateno = 5110
trigger1 = anim = [5110,5111]
trigger1 = time >= 0
trigger2 = stateno = 5120
trigger2 = anim = [5110,5111]
trigger2 = time >= 0

;-------------------------------------------------------------------------------
;AI Guard
[State -1, AI Guard]
type = ChangeState
value = 120
ctrl = 0
triggerall = AILevel
triggerall = roundstate = 2
triggerall = random < AILevel*100
triggerall = stateno != [120,155]
triggerall = inguarddist
triggerall = !(enemynear,HitDefAttr = SCA, NT, ST, HT)  || (enemy,numhelper > 0) || (enemy,numproj > 0) || (enemynear,animtime < -6)
trigger1 = ctrl
trigger2 = var(21) = 1
trigger2 = stateno = 100 && (time = [1,6])

[State -1, AI Guard Hi to Lo (States 120/140/151)]
type = StateTypeSet
triggerall = AILevel
triggerall = roundstate = 2
triggerall = ((stateno = 120) || (stateno = 140) || (stateno = [150,151]))
triggerall = statetype != A
trigger1 = AILevel <= 5
trigger1 = random < AILevel*1
trigger2 = fvar(38) = 1
trigger2 = (random < AILevel*8) || (AILevel > 5)
statetype = C
physics = C

[State -1, AI Guard Lo to Hi (States 120/140/153)]
type = StateTypeSet
triggerall = AILevel
triggerall = roundstate = 2
triggerall = ((stateno = 120) || (stateno = 140) || (stateno = [152,153]))
triggerall = statetype != A
trigger1 = AILevel <= 5
trigger1 = random < AILevel*1
trigger2 = fvar(38) = 2
trigger2 = (random < AILevel*8) || (AILevel > 5)
statetype = S
physics = S

[State -1, AI Guard Hi to Lo (State 130)]
type = ChangeState
value = 131
triggerall = AILevel
triggerall = roundstate = 2
triggerall = stateno = 130
triggerall = statetype = S
triggerall = statetype != A
trigger1 = AILevel <= 5
trigger1 = random < AILevel*1
trigger2 = fvar(38) = 1
trigger2 = (random < AILevel*8) || (AILevel > 5)

[State -1, AI Guard Lo to Hi (State 131)]
type = ChangeState
value = 130
triggerall = AILevel
triggerall = roundstate = 2
triggerall = stateno = 131
triggerall = statetype = C
triggerall = statetype != A
trigger1 = AILevel <= 5
trigger1 = random < AILevel*2
trigger2 = fvar(38) = 2
trigger2 = (random < AILevel*8) || (AILevel > 5)