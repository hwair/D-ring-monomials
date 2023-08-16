-- Functions in this file assume they are given a k-algebra B of the form k[x] / I, where:
--     B is local and of finite rank
--     The unique maximal ideal of B is (x)
--     x = (x1, ..., xd), where d is the dimension over k of (x) / (x)^2


-- Given B, computes the general product rules for an arbitrary D-ring (R, ∂), where
--     D uses the monomial basis on B given by the construction in Macaulay's theorem,
--     under the grevlex monomial ordering
-- Returns a linear combination over the basis elements where the coefficients encode the product rules
-- For example, B = QQ[x, y] / (y^3, x^2 + y^2) will return a linear combination over
--     {1, y, x, y^2, xy, x^2, xy^2, x^3}, where the coefficient of ∂_(x,a)*∂_(1,b)+∂_(1,a)*∂_(x,b)
--     on x means that for any D-ring (R, ∂) and any elements a, b in R,
--     ∂_x(ab) = ∂_x(a)∂_1(b) + ∂_1(a)∂_x(b)
computeProdRules = B -> (
    V = {};
    D = numColumns basis B;
        
    -- Encode the components of the operator ∂ as formal symbols with respect to the basis for B
    for i from 0 to D - 1 do V = append(V, ∂_((basis B)_i_0, a));
    for i from 0 to D - 1 do V = append(V, ∂_((basis B)_i_0, b));

    -- Reconstruct the ring B with the additional formal symbols V, listed as coefficients
    -- Leave T as the free ring, and add back to T' the relations present in B
    T = (coefficientRing B)[V][generators B];
    I = ideal sub(generators ideal B, T);
    T' = T / I;

    -- Recover the formal symbols as elements of T into column vectors
    Da = vector (generators coefficientRing T)_{0 .. D - 1};
    Db = vector (generators coefficientRing T)_{D .. 2 * D - 1};

    -- gRule will contain the ideal generalized derivation rule
    gRule = 0;
    -- Form the expressions for the images of a and b in R under the homomorphism to D(R), and
    --     perform the multiplication of the expressions to compute the product rule in
    --     the relation-free environment T
    tmpRule = (sub(basis T', T) * Da)_0 * (sub(basis T', T) * Db)_0;
    -- Keep in gRule only the terms corresponding to basis elements of B
    for b in (entries sub(basis B, T))_0 do gRule = gRule + coefficient(b, tmpRule) * b;
    -- Perform the same multiplication as above, but with the relations present in B enabled
    aRule = (basis T' * Da)_0 * (basis T' * Db)_0;

    print concatenate("Actual computed rule: ", toString aRule);
    print concatenate("Generalized derivation rule: ", toString gRule);
    print concatenate("Difference: ", toString (aRule - gRule));
    print concatenate("Is it a generalized derivation? ", if aRule - gRule == 0 then "Yes" else "No");
    
    return aRule;
    );


getMonomials = B -> (
    -- Get the variables x in B = k[x] / I
    vs = generators ambient B;
    nvs = length vs;
    pows = {};
    zeroes = {};
    mons = {};

    -- Get the nilpotent degree of each variable
    for v in vs do (
        j = 0;
        while sub(v^j, B) != 0 do j = j + 1;
        pows = append(pows, j);
        zeroes = append(zeroes, 0);
        );

    -- From (0, ..., 0) to (n1, ..., nd) the nilpotent degrees of each (x1, ..., xd),
    --     compute each corresponding monomial to see whether or not it vanishes in the quotient
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
