c0(0). 
c1(1). 
c2(2). 
c3(3). 
c4(4).


plus(X,Y,Z) :-
        integer(X),
        integer(Y),
        Z is X + Y.

minus(X,Y,Z) :-
        integer(X),
        integer(Y),
        Z is X - Y.

mult(X,Y,Z) :-
        integer(X),
        integer(Y),
        Z is X * Y.

div(X,Y,Z) :-
        integer(X),
        integer(Y),
        Y > 0,
        Z is X / Y.