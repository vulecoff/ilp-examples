
% For some reason Popper doesn't learn program with NAF
hasNoDiv(N) :- \+ hasDiv(N).
hasDiv(N) :- hasDiv*(N, 2).
hasDiv*(N, F) :- F > 1, F * F =< N, N mod F =:= 0.
hasDiv*(N, F) :- F > 1, F * F =< N, N mod F =\= 0, F1 is F + 1, hasDiv*(N, F1).