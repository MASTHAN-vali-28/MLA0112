% Base case: Move 1 disk directly from Source to Target peg
hanoi(1, Source, Target, _, Name) :-
    write('Move disk from '), write(Source), write(' to '), write(Target), nl.

% Recursive case: Move N-1 disks to helper peg, move 1 disk to target, move N-1 to target
hanoi(N, Source, Target, Helper, Name) :-
    N > 1,
    M is N - 1,
    hanoi(M, Source, Helper, Target, Name),
    hanoi(1, Source, Target, Helper, Name),
    hanoi(M, Helper, Target, Source, Name).
