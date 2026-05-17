Zangief from Capcom VS. SNK 2
Last Update : 2010/4/6
Progress : 98.87%

When round start, if you push right or left button this char's type is changed Alpha 2, Alpha3, CFJ, CVS1,SFIIX, SFIV EX-mode.


It is not possible to dizzy when there are two enemies though this character can make a enemy dizzy. 


|||||||||||||||||||||||
There are no Rolling Cancel.

If you would like to disable the groove selection, you should read "How to set to disable groove selection.txt".

The setting change can be variously done by changing the numerical value in parentheses in the part written "Fvar(?) = ()" in option.cns.
EX-Groove system is revokable in option.cns.


Guard Clash system is pseudo. It is necessary to make shape "Var of each character for the value of Guard Clash is made, and the var is read" to reproduce the original completely.Complete reproduction of this part is almost impossible though it aims at complete reproduction.

Length of Guard Clash Point : 38 Point in P Groove, 43 point in K Groove, 48 point in others
Amount of a guard crash value decrease(The original is different in each 
Moves. )
===basic moves===
Only the first decreases to the value of Guard Clash though it goes out by two times. 
Light moves : all 2 points.
Middle moves : all 4 points. 
High moves : 7 points in the short distance. 6 points in other distances.

Special Moves : The cutting down damage is five points in 115 or less. Besides, It is a point that divided the one that six times were done by seven as for the cutting down damage.
In 115 or less the cutting down damage, it is Guard Clash is one-point ; Vega(having claw and mask)'s Rolling Crystal Flash and Sakura's Shououken
Super Aurts : a point of all


--------Groove System--------
You can Choose 6 Grooves.
All Grooves has Long Jump and Back Dash.

C-Groove
Gauge : (Lv.1,Lv.2,Lv.3(MAX)),Gauge Length(Normal) : 168Dot=56*3
Dash : Dash
Air System : Air Guard
Emergency Avoidance : Rolling
Liedown Action : Tactical Recovery
Counter System : Counter Attack
Note : SuperAurts of LV.2 can be canceled with Supermoves and SuperAurts while becoming a hit.
Note : The attack power rises by the amount of the gauge; It is increased 1.05 in MAX. It is increased 1.02 more than 2/3 from MAX. It is increased 1.01 more than 1/3 and less than 2/3.

A-Groove
Gauge : (Lv1*2),Gauge Length(Short) : 144Dot=72*2
Dash : Dash
Air System : None
Emergency Avoidance : Rolling
Liedown Action : Safe Fall
Counter System : Counter SystemAttack
Other : Custom Combo(While state of full gauge(Ground/Air))

P-Groove
Gauge : (Lv3(MAX)),Gauge Length(Long) : 192Dot
Dash : Dash
Air System : Small Jump
Emergency Avoidance : None
Liedown Action : Tactical Recovery
Counter System : None
Other : Parry(Stand/Crouch/Air)

S-Groove
Gauge : (Lv1 OR Lv3(Health is less than 30% and Gauge MAX)),Gauge Length(Short) : 100Dot
Dash : Run
Air System : Small Jump
Emergency Avoidance : Dodge
Liedown Action : Tactical Recovery
Counter System : Counter SystemAttack
Other : Power Charge
Note : SuperAurts of Lv.1 can be used even if Gauge is not MAX when physical strength is 30% or less. 
Note : It eats Attack, and only guard and the Gauge accumulation operation : how to collect Gauge.
Note : While MAX of gauge, this char's offence is increased 15%.

N-Groove
Gauge : (Lv1*3ORLv.3),Gauge Length(Long) : 216Dot=72*3
Dash : Run
Air System : Small Jump
Emergency Avoidance : Rolling
Liedown Action : Safe Fall
Counter System : Counter Attack/Movement(Front/Back)
Other : Power MAX ON(Spend 1 Gauge)
Note : While Power MAX ON, you can use SuperAurts of MAX(Lv.3).
Note : While Power MAX ON, this char's offence is increased 20%.

K-Groove
Gauge : (MAX(Lv.3)),Gauge Length(Short) : 72Dot
Dash : Run
Air System : Small Jump
Emergency Avoidance : None
Liedown Action : Safe Fall
Counter System : None
Other : Just Defence(Stand/Crouch/Air)
Note : Only when it eats Attack, and Just Defense : how to collect Gauge
Note : While MAX of gauge, this char's defence is increased 22.5% and It's offence is increased 10~35%.



--------Update report
2007/6/3	Start
2007/8/31	Release
2007/9/4	Add intro (VS Raiden/Eagle). Fix EX groove(if you don't choose run and dash, you can't use backdash). Bug Fix(K-groove). and so on.
2007/9/4	Fix Reversal. Fix cancelation. Fix Run Sound.Fix Attack of MAX SuperAurts in S/N-Groove.
2007/10/27	Fix Down Effect. Fix Complete bug and so on.
2007/10/27	Fix Just Defence in the air. Add Dizzy Effect.
2007/10/27	Fix throwing distance.Add Bliss picture.
2007/10/27	Fix Cheap FINISH. Fix Damage Voice.
2007/10/27	Add EX-Mode(Reference to EX_command.txt).Add Head But.Add Sabaki(only cvs anakaris). Fix some moves.and so on.
2007/11/10	Fix Air Guard. Fix Fall Animation.
2007/11/10	Bug Fix(Throw of Command type). Fix hit judge of all normal action.and so on.
2007/12/03	Fix Gauge position. Fix "How to set to disable groove selection.txt".Fix Bug(custom combo)
2007/12/03	Dizzy and Guard Clash adjust chain combo.(In chain combo, Dizzy is 0 Guard clash decrease 1 dot.).
2007/12/03	Fix Down effect animation. Fix Power Charge. Fix Pictures of Groove Selection. Fix AI(Guard). and so on.
2007/12/03	Fix Atmic?, Final Atmic Buster and Aerial Rosian Slam animation. Fix AI.and so on.
2007/12/12	Fix AI. Fix Air Just Defence.
2007/12/15	Fix EX-Groove. Fix Announcing(Big Damage etc...).
2008/2/18	Add setting of ON/OFF of dizzy and guard clash(you press the start button when the round begin).
2008/2/18	If you choose blocking/just defence in EX-groove. Amount of the guard clash gauge is decreased.
2008/2/18	Fix Air Just Defence.
2008/2/18	Fix Air Combo. Fix Guard Clash. Fix SNK gauges.
2008/2/18	Fix Avoid Throw. Fix ON/OFF. You can change ON/OFF in option.cns.Fix Safe Fall.
2008/2/18	Fix hitpausetime. Fix Damage Voice. Fix First Attack. and so on.
2008/3/20	Fix/Add a lot of bonus message.Fix dizzy system. Fix guard clash system.
2008/3/20	some groove is little weak or little strong(please read option.cns).
2008/3/20	Fix light attack(hitback and cancel).
2008/3/20	Fix custom combo.
2008/3/20	Fix AI(EX-Groove). Fix Bug and slight mistakes.
2008/3/20	Fix Special Throws. Fix AI(custom combo etc...).
2008/6/23	Fix Dizzy. Fix Guarding. Fix AI. and so on.
2008/9/6	Add SFIIX, SFIV mode.
2008/9/6	Add enemy guard clash. Fix adding power of Parry and Just Defence. Fix guard clash and dizzy. Fix AI. and so on.
2008/10/09	Fix animation of Power MAX.Fix effect of Power MAX.Fix Bug(guard clash gauge). 
2008/10/9	Fix AI. Fix SFIV mode. Add mode introduction.txt.
2010/3/31	Fix AI. Fix Just Defence Bug. Decrease raging defence 1.225 to1.125. Fix figure sprites. Bug Fix. and so on.
2010/4/6	Bug Fix.


EMail : rei8315656@yahoo.co.jp
Please contact me when there are a place etc. different from the bug and the 
original.
I made the groove system that my friend Gal129 and I(rei) use, and give the report for the groove system to me, please.

You may release my char's palettes.

The images of Warusaki and H" is used for the char of Capcom VS. SNK 2 that I made.


*=====================*

Without following people, I will not have made this character. Thank you. 

Capcom
elecbyte
Mr.Warusaki3(Pictures/I made Reference to CNS.)
Mr.H"(pictures/ I made Reference to CNS.)
Mr.The Dreamslayer(Effects)
Mr.Ibukigawa(The base of the character production was taught. )
Mr.MMR(I made reference to CNS.)
Mr.Wuwo(Character Pictures)