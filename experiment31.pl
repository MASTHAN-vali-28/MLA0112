% --- Database (Facts) ---
% Format: parent(ParentName, ChildName).
parent(bob, lisa).
parent(bob, tom).
parent(bob, jack).
parent(mary, ann).

% --- Relationship Rules ---
% X and Y are siblings IF:
% 1. They share the same parent P.
% 2. AND X is not the exact same person as Y (\= means "not equal").
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.
