to(p1,p4,c).
to(p2,p4,t).
to(p4,p5,p).
to(p4,p6,t).
to(p4,p7,t).
to(p3,p7,p).
to(p7,p8,c).
to(p7,p9,t).
to(p9,p10,p).


get(X,Y):- (travel(X,Y),write(X));write('Oooops there no way to go there !!').


travel(X,Y):-to(X,Z,B),((Z=Y,print(Y,B));travel(Z,Y),print(Z,B)).

print(X,Y):- write(X),write('<=(By '),by(Y),write(')=').

by(Y):-(Y=c,write('Car'));(Y=t,write('Train'));(Y=p,write('Plane')).
