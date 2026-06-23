% Base case: An empty list [] has a length of 0.
list_length([], 0).

% Recursive case: The length of a list is 1 plus the length of its Tail.
% [Head|Tail] splits the list into the first item (Head) and the rest (Tail).
list_length([_|Tail], Length) :-
    list_length(Tail, TailLength),
    Length is TailLength + 1.
