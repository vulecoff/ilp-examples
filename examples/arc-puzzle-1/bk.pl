% map_pixel(M1, [H1 | R1], M2, [H2 | R2]) :- 
    

%% 
get(I, J, M, V) :- 
    mat_get0(I, J, mat(M, _, _), V).
set(I, J, M, O) :- 
    mat_set0(I, J, mat(M, _, _), 1, mat(O, _, _)).
unset(I, J, M, O) :- 
    mat_set0(I, J, mat(M, _, _), 0, mat(O, _, _)). 
scale(M, F, O) :-  % exactly by 3
    mat_resize(mat(M, _, _), 3, mat(O, _, _)).    

c0(0).
c1(1).
c2(2).
c3(3).
c4(4).
c5(5).
c6(6).
c7(7).
c8(8).
% c9(9).
% c10(10).


%% low-level pred
mat_get0(I, J, mat(List, _, _), V) :- 
    nth0(I, List, V1), 
    nth0(J, V1, V).
mat_set0(I, J, mat(ListI, N, M), V, mat(ListO, N, M)) :- 
    nth0(I, ListI, L1, R1), 
    nth0(J, L1, _, R2), 
    nth0(J, V1, V, R2), 
    nth0(I, ListO, V1, R1). 

repeat(C, 0, []).    
repeat(C, F, [C | Rest]) :- 
    F > 0, 
    F1 is F - 1,
    repeat(C, F1, Rest).

resize([], F, []).
resize([H | L], F, Res) :- 
    F > 0,
    repeat(H, F, HH), 
    append(HH, Res1, Res), 
    resize(L, F, Res1).

mat_resize(mat([], N, M), F, mat([], N, M)).
mat_resize(mat([H1 | L1], N, M), F, mat(Res, N, M)) :- 
    F > 0, 
    resize(H1, F, HH1), 
    repeat(HH1, F, HH2), 
    append(HH2, Res1, Res), 
    mat_resize(mat(L1, N, M), F, mat(Res1, N, M)).