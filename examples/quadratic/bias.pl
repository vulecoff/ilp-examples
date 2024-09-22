max_vars(5).
max_body(5).
max_rules(1). max_clauses(1).

head_pred(f,2). direction(f,(in,out)).

body_pred(quadratic, 5). direction(quadratic, (in, in, in, in, out)).

body_pred(c0,1). direction(c0, (out,)).
body_pred(c1,1). direction(c1, (out,)).
body_pred(c2,1). direction(c2, (out,)).
body_pred(c3,1). direction(c3, (out,)).
body_pred(c4,1). direction(c4, (out,)).
body_pred(c5,1). direction(c5, (out,)).
body_pred(c6,1). direction(c6, (out,)).
body_pred(c7,1). direction(c7, (out,)).
