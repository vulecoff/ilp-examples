quadratic(X, B0, B1, B2, O) :- 
        integer(X), integer(B0), integer(B1), integer(B2), 
        O is B0 + B1 * X + B2 * X * X.

c0(0). c1(1). c2(2). c3(3). c4(4). c5(5). c6(6). c7(7).