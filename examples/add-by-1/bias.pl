max_vars(5).
max_body(5).

head_pred(f,2).

body_pred(plus,3).
body_pred(minus,3).
body_pred(mult,3).
body_pred(div,3).

body_pred(c0, 1). direction(c0, (in,)).
body_pred(c1, 1). direction(c1, (out,)).
body_pred(c2,1). direction(c2, (in,)).
body_pred(c3,1). direction(c3, (in,)).
body_pred(c4,1). direction(c4, (in,)).


direction(f,(in,out)).
direction(plus,(in,in,out)).
direction(minus,(in,in,out)).
direction(mult,(in,in,out)).
direction(div,(in,in,out)).