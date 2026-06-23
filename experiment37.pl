% Base case: The element is the first item (Head) of the list
is_member(Element, [Element|_]).

% Recursive case: Look for the element in the rest (Tail) of the list
is_member(Element, [_|Tail]) :-
    is_member(Element, Tail).
