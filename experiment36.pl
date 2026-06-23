% Base case: Factorial of 0 is 1
factorial(0, 1).

% Recursive case: N! is N multiplied by (N-1)!
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, SubResult),
    Result is N * SubResult.
