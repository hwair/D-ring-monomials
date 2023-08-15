computeProdRules = B -> (
    V = {};
    D = numColumns basis B;

    for i from 0 to D - 1 do V = append(V, ∂_((basis B)_i_0, a));
    for i from 0 to D - 1 do V = append(V, ∂_((basis B)_i_0, b));
    
    T = (coefficientRing B)[V][generators B];
    I = ideal sub(generators ideal B, T);
    T' = T / I;
    
    Da = vector (generators coefficientRing T)_{0 .. D - 1};
    Db = vector (generators coefficientRing T)_{D .. 2 * D - 1};
    
    R = 0;
    tmpR = (sub(basis T', T) * Da)_0 * (sub(basis T', T) * Db)_0;
    for b in (entries sub(basis B, T))_0 do R = R + coefficient(b, tmpR) * b;
    R' = (basis T' * Da)_0 * (basis T' * Db)_0;
    
    print concatenate("Actual computed rule: ", toString R');
    print concatenate("Generalized derivation rule: ", toString R);
    print concatenate("Difference: ", toString (R' - R));
    print concatenate("Is it a generalized derivation? ", if R' - R == 0 then "Yes" else "No");
    
    return R';
    );

getMonomials = B -> (
    vs = generators ambient B;
    nvs = length vs;
    pows = {};
    zeroes = {};
    mons = {};
    
    for v in vs do (
        j = 0;
        while sub(v^j, B) != 0 do j = j + 1;
        pows = append(pows, j);
        zeroes = append(zeroes, 0);
        );

    for p in zeroes..pows do (
        m = 1;
        for i from 0 to nvs - 1 do m = m * vs_i^(p_i);
        if sub(m, B) != 0 then mons = append(mons, m);
        );
    
    return sort mons;
    );

B = QQ[x, y] / (y^3, x^2 + y^2);
computeProdRules B;
print getMonomials B;

BB = QQ[x, y] / (x^3, y^3);
computeProdRules BB;
print getMonomials BB;
