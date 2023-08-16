-- Sourced from math.mit.edu/~poonen/papers/dimension6.pdf
--     Bjorn poonen
--     Isomorphism types of commutative algebras of finite rank over an algebraically closed field
rank6case1 = QQ[x] / (x^6);
rank6case2 = QQ[x, y] / (x^2, x*y, y^5);
rank6case3 = QQ[x, y] / (x^2 + y^4, x*y);
rank6case4 = QQ[x, y] / (x*y, x^3, y^4);
rank6case5 = QQ[x, y] / (x*y, x^3 + y^3);
rank6case6 = QQ[x, y] / (x^2, x*y^2, y^4);
rank6case7 = QQ[x, y] / (x^2 + y^3, x*y^2, y^4);
rank6case8 = QQ[x, y] / (x^2, y^3);
rank6case9 = QQ[x, y] / (x^3, x^2*y, x*y^2, y^3);
rank6case10 = QQ[x, y, z] / (x^2, x*y, y^2, x*z, y*z, z^4);
rank6case11 = QQ[x, y, z] / (x^2, x*y, y^2 + z^3, x*z, y*z, z^4);
rank6case12 = QQ[x, y, z] / (x^2, x*y + z^3, y^2, x*z, y*z, z^4);
rank6case13 = QQ[x, y, z] / (x*y, y*z, z^2, y^2 - x*z, x^3);
rank6case14 = QQ[x, y, z] / (x*y, z^2, x*z - y*z, x^2 + y^2 - x*z);
rank6case15 = QQ[x, y, z] / (x^2, x*y, x*z, y^2, y*z^2, z^3);
rank6case16 = QQ[x, y, z] / (x^2, x*y, x*z, y*z, y^3, z^3);
rank6case17 = QQ[x, y, z] / (x*y, x*z, y^2, z^2, x^3);
rank6case18 = QQ[x, y, z] / (x*y, x*z, y*z, x^2 + y^2 - z^2);
rank6case19 = QQ[x, y, z] / (x^2, x*y, y*z, y^2 - z^2);
rank6case20 = QQ[x, y, z] / (x^2, x*y, y^2, z^2);
rank6case21 = QQ[x, y, z, w] / (x^2, y^2, z^2, x*y, x*z, x*w, y*z, y*w, z*w, w^3);
rank6case22 = QQ[x, y, z, w] / (x^2, y^2, z^2, w^2, x*y, x*z, x*w, y*z, y*w);
rank6case23 = QQ[x, y, z, w] / (x^2, y^2 + z^2, y^2 + w^2, x*y, x*z, x*w, y*z, y*w, z*w);
rank6case24 = QQ[x, y, z, w] / (x^2, y^2, z^2, w^2, x*y - z*w, x*z, x*w, y*z, y*w);
rank6case25 = QQ[x, y, z, v, w] / (x^2, x*y, x*z, y^2, y*z, z^2, x*w, y*w, z*w, w^2, x*v, y*v, z*v, w*v, v^2);