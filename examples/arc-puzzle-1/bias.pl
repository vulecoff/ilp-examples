max_clauses(1).

head_pred(f, 2). direction(f, (in, in)). type(f, (list, list)).
% :- f(A, B), length(A, N), length(B, M), N > M. 
% :- f(A, B), nth0(0, A, AA), nth0(0, B, BB), length(AA, N), length(BB, M), N > M.  

% body_pred(map_pixel, 6). direction(map_pixel, (in, in, in, in, in, in)). type(map_pixel, (list, int, int, list, int, int)).
body_pred(get, 4). direction(get, (in, in, in, out)). type(get, (int, int, list, int)).
body_pred(set, 4). direction(set, (in, in, in, out)). type(set, (int, int, list, list)).
body_pred(unset, 4). direction(unset, (in, in, in, out)). type(unset, (int, int, list, list)).
body_pred(scale, 3). direction(scale, (in, in, out)). type(scale, (list, int, list)).

body_pred(c0, 1). direction(c0, (out,)). type(c0, (int,)).
body_pred(c1, 1). direction(c1, (out,)). type(c1, (int,)).
body_pred(c2, 1). direction(c2, (out,)). type(c2, (int,)).
body_pred(c3, 1). direction(c3, (out,)). type(c3, (int,)).
body_pred(c4, 1). direction(c4, (out,)). type(c4, (int,)).
body_pred(c5, 1). direction(c5, (out,)). type(c5, (int,)).
body_pred(c6, 1). direction(c6, (out,)). type(c6, (int,)).
body_pred(c7, 1). direction(c7, (out,)). type(c7, (int,)).
body_pred(c8, 1). direction(c8, (out,)). type(c8, (int,)).
% body_pred(c9, 1). direction(c9, (out,)). type(c9, (int,)).
% body_pred(c10, 1). direction(c10, (out,)). type(c10, (int,)).