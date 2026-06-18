% Base case: Moving 1 disk from Source to Target
move(1, Source, Target, _, [move(Source, Target)]).

% Recursive case: Move N disks from Source to Target using Auxiliary
move(N, Source, Target, Auxiliary, Moves) :-
    N > 1,
    M is N - 1,
    move(M, Source, Auxiliary, Target, Moves1),
    move(M, Auxiliary, Target, Source, Moves2),
    append(Moves1, [move(Source, Target)|Moves2], Moves).

% Helper predicate to print the steps cleanly
hanoi(N) :-
    move(N, left, right, center, Moves),
    print_moves(Moves).

print_moves([]).
print_moves([move(S, T)|Rest]) :-
    format('Move top disk from ~w peg to ~w peg~n', [S, T]),
    print_moves(Rest).
