% Main predicate to reverse a list
reverse_list(List, Reversed) :-
    reverse_helper(List, [], Reversed).

% Helper base case: when input list is empty, result is the accumulator
reverse_helper([], Acc, Acc).

% Helper recursive case: move Head to the accumulator
reverse_helper([Head|Tail], Acc, Reversed) :-
    reverse_helper(Tail, [Head|Acc], Reversed).
