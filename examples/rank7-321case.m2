-- Sourced from arxiv.org/pdf/2107.04959.pdf
--     Alexandria Yu
--     Isomorphism types of commutative algebras of rank 7 over an arbitrary algebraically closed field of characteristic not 2 or 3
q321rank7case1 = QQ[x, y, z] / (x*y, y^2 - x*z, z^2, y*z, x^4);
q321rank7case2 = QQ[x, y, z] / (x*y, y^2 - x*z, z^2, y*z - x^3, x^4);
q321rank7case3 = QQ[x, y, z] / (x*y, y^2 - x*z, y*z, z^2 - x^3, x^4);
q321rank7case4 = QQ[x, y, z] / (x^2, y^2, x*z, y*z^2, x*y - z^3, z^4);
q321rank7case5 = QQ[x, y, z] / (x^2, y^2, x*z, y*z^2, x*y, z^4);
q321rank7case6 = QQ[x, y, z] / (y^2, x*z, y*z^2, x*y, x^2 - z^3, z^4);
q321rank7case7 = QQ[x, y, z] / (x^2, x*y, x*z, y^2 - z^3, y*z^2, z^4);
q321rank7case8 = QQ[x, y, z] / (x*y, x*z, y^2, z^3, x^2 - y*z^2);
q321rank7case9 = QQ[x, y, z] / (x^2, x*y, x*z, y^2, z^3);
q321rank7case10 = QQ[x, y, z] / (x*y, x*z, y*z, y^3, x^3 - z^3);
q321rank7case11 = QQ[x, y, z] / (x^2, x*z, y*z, y^3, x*y - z^3);
q321rank7case12 = QQ[x, y, z] / (x^2, x*y, x*z, y*z, y^3 - z^3);
q321rank7case13 = QQ[x, y, z] / (x*y, x*z, y*z, y^3 - z^3, x^2 - z^3);
q321rank7case14 = QQ[x, y, z] / (x^2, x*y, x*z, y*z, y^3 - z^3);
q321rank7case15 = QQ[x, y, z] / (x^2, y*z, x*z - z^2 + y^2, x*y);
q321rank7case16 = QQ[x, y, z] / (x^2, y*z, x*z - z^2 + y^2, x*y - z^3);
q321rank7case17 = QQ[x, y, z] / (x*y, x*z, y^2 - x^3, z^2 - x^3, x^4);
q321rank7case18 = QQ[x, y, z] / (x*y, x*z, y^2, z^2 - x^3, x^4);
q321rank7case19 = QQ[x, y, z] / (x*y, x*z, y^2, z^2, x^4);
