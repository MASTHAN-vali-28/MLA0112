% Base case: Appending an empty list to any list leaves it unchanged
append_list([], List, List).

% Recursive case: Take Head from the first list, add it to the result list
append_list([Head|Tail1], List2, [Head|ResultTail]) :-
    append_list(Tail1, List2, ResultTail).
