% Base cases: The 0th Fibonacci number is 0, and the 1st is 1.
fibonacci(0, 0).
fibonacci(1, 1).

% Recursive case: Fib(N) = Fib(N-1) + Fib(N-2)
fibonacci(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, R1),
    fibonacci(N2, R2),
    Result is R1 + R2.
