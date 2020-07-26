male(m1).
male(m2).
male(m3).
male(m4).

female(f1).
female(f2).
female(f3).
female(f4).

father(m1,m2).
father(m1,f2).
father(m2,m3).
father(m2,f3).


mather(f1,m2).
mather(f1,f2).
mather(f2,m4).
mather(f2,f4).

son(S,P):- male(S),(father(P,S);mather(P,S)).

daughter(D,P):- female(D),(father(P,D);mather(P,D)).

grandSon(GS,GP):- male(GS),((father(GP,P),father(P,GS));
    (father(GP,P),mather(P,GS));(mather(GP,P),father(P,GS));(mather(GP,P),mather(P,GS))).

grandDaughter(GS,GP):- female(GS),((father(GP,P),father(P,GS));
    (father(GP,P),mather(P,GS));(mather(GP,P),father(P,GS));(mather(GP,P),mather(P,GS))).

grandFather(GP,GS):- male(GP),((son(P,GP),son(GS,P));(son(P,GP),daughter(GS,P));
                              (daughter(P,GP),son(GS,P));(daughter(P,GP),daughter(GS,P))).

grandMather(GP,GS):- female(GP),((son(P,GP),son(GS,P));(son(P,GP),daughter(GS,P));
                              (daughter(P,GP),son(GS,P));(daughter(P,GP),daughter(GS,P))).

