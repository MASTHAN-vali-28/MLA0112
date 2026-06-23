% Base case: GCD of X and 0 is X
gcd(X, 0, X) :- X > 0.

% Recursive case: Replace X and Y with Y and (X mod Y)
gcd(X, Y, Result) :-
    Y > 0,
    Remainder is X mod Y,
    gcd(Y, Remainder, Result).
