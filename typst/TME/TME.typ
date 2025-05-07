#import "/typst/template/template.typ":*
#show: styling

#head1[Technische-Mathematik]

#hr
#outline(indent: auto,depth: 4)
#hr
= Komplexe Wechselstromrechnung
#head2[Aufgabe 1]
Berechnen Sie die Werte folgender Größen:\ 
I, Z₁₃, Z₂₃, $I_R$, $I_L$, U₁₂, U₂₃ und φ
U₁₃ = 10 V, R₁ = 10 Ω, R₂ = 30 Ω, X_L = 40 Ω.\
#image("Screenshot_28.png")\
$X_L=j w L$\
$X_C=1/(j w C)*j/j=j/(j²* w C)=j/(w C)=-j 1/(w C)$\

#red1[Aufschrieb anpassen]\
$#comp("Z",23)=(R_2*j X_L)/(R_2+j X_L)=(20 Omega*j 40 Omega)/(20 Omega+j 40 Omega)$
\
#blue1[TR: $(30*40 i)/(30+40 i)$]\
#blue1[TR: $(30*i*40)/(30+î*40)$]\
#blue1[TR:Setup, #sym.arrow.b.quad, 2]\
|#comp("Z","")| $sqrt(19.2)$  \


#underline[I]=$U/(#underline("Z")_13)=("10V")/(32.56 Omega e^(j 26.25))=("10V")/(32.56 Omega e^(-j 26.25))=0.31A e^(j 26.25°)$\
\
#blue1[TR: $10/(32.56#sym.angle.acute 26.25)$]\
\
#blue1[TR: $10/(29.2+14.4i)$]

$#underline("U")_(12)=R_1*I=10 Omega *0.31A e^(-j 26.25°)=3.1V e^(-j 26.25)$
\

$#underline("U")_(23)=#underline("U")_(31)-#underline("U")_(12)=10V-3.1V e^(-j 26.25)= 7.35V e^(j 10.75°)$
\

$#underline("U")_23*#underline("I")=24 Omega e^(j 36.87)*0.31A e^(-j 26.25)=7.44V e^(j 10.62)$
\

$#underline("I")_R=(#underline("U")_23)/(R_2)=(7.35 e^(j 10.75))/(30 Omega)=(7.35V)/(30 Omega)e^(j 10.75°)=0.245A e^(j 10.75°)$
\

$#comp("I","L") =#comp("U","23") /(j X_L)=(7.35 e^(j 10.75))/(j 40 Omega)=0.184 A e^(-j 79.25°)$\
\

$#underline("Z")= 29.2 Omega + j 14.4 Omega = 32.56 Omega e^(j 26.25°)\
U= 10V e^(j 0) I= #ej("0.31A",26.25)$
\
#head2[Aufgabe 1]\
#image("Screenshot_34.png")\
$#comp("Z",23)=(R_2*j X_C)/(R_2+j X_C)=(150 Omega*(-j 20 Omega))/(150 Omega-j 20 Omega)=#ej(19.82,-82.41)=2.62 Omega-j 19.65 Omega$\
#comp("Z","ges")$=j X_L-#comp("Z",23)=j 50 Omega+2.62 Omega - j 19.65 Omega =2.62 Omega + j 30.35 Omega = #ej(30.46,85.066)$\
$#comp("U","ges")=#comp("Z","ges")*#comp("I","ges")=#ej(30.46,85.066)*#ej(5,60)=#ej(152.3,145.09)V$\
$#comp("U","L")=#comp("X","L")* #comp("I","ges")= #ej(50,90)*#ej(5,60)=#ej(250,150)V$\
$#comp("U","RC")=#comp("U","ges")-#comp("U","L")=#ej(152.3,145.09)V-#ej(250,150)V=#e-j(99.12,22.44)V$\
$#comp("I","C")=#comp("U","RC")/#comp("R","C")=(#e-j(99.12,22.44)V)/(#e-j(20,90)Omega)=#ej(4.956,67.56)A$\
$#comp("I","R")=#comp("U","RC")/#comp("R","R")=(#e-j(99.12,22.44)V)/(#ej(150,0)Omega)=#ej(0.66,-22.44)A$