#import "/typst/template/template.typ":*
#show: styling

#head1[Technische-Mathematik]

#hr
#outline(indent: auto,depth: 4)
#hr
= Komplexe Wechselstromrechnung
Berechnen Sie die Werte folgender Größen:\ 
I, Z₁₃, Z₂₃, $I_R$, $I_L$, U₁₂, U₂₃ und φ
U₁₃ = 10 V, R₁ = 10 Ω, R₂ = 30 Ω, X_L = 40 Ω.\
#image("Screenshot_28.png")\
$X_L=j w L$\
$X_C=1/(j w C)*j/j=j/(j²* w C)=j/(w C)=-j 1/(w C)$\

#red1[Aufschrieb anpassen]\
\

#underline[I]=$U/(#underline("Z")_13)=("10V")/(32.56 Omega e^(j 26.25))=("10V")/(32.56 Omega e^(-j 26.25))=0.31A e^(j 26.25°)$\
\
TR: $10/(32.56#sym.angle.acute 26.25)$\
\
TR: $10/(29.2+14.4i)$

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