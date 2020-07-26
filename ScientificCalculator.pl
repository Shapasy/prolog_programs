add(X,Y,R):- R is X+Y.

sub(X,Y,R):- R is X-Y.

mul(X,Y,R):- R is X*Y.

div(X,Y,R):- R is X/Y.

pow(X,Y,R):- R is X**Y.

sum([],0).
sum([H|T],N):-sum(T,N1),N is H+N1.

size([],0).
size([_|T],N):- size(T,N1),N is N1+1.

gcd(I,0,I):- !.
gcd(I,J,K):- R is I mod J,gcd(J,R,K).

lcm(I,J,K):-gcd(I,J,R),K is (I*J)//R.


cal(X,Y,Z):- (Z='+',add(X,Y,R),write(R));(Z='-',sub(X,Y,R),write(R));
(Z='*',mul(X,Y,R),write(R));(Z='/',(Y\=0,div(X,Y,R),write(R);write('can not divide by zero !')));
(Z='^',pow(X,Y,R),write(R));(Z='gcd',gcd(X,Y,R),write(R));
(Z='lcm',lcm(X,Y,R),write(R));write('Error Invalid Operation !').

cal(L,Z):-(Z='sum',sum(L,R),write(R));(Z='size',size(L,R),write(R))
;write('Error Invalid Operation !').

