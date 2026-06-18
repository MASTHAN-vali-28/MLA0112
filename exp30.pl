% Gender Facts
female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

% Parent Facts: parent(Parent, Child)
parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(pam, liz).
parent(bob, ann).
parent(bob, pat).
parent(liz, jim).

% 1. Mother relation
mother(X, Y) :-
    parent(X, Y),
    female(X).

% 2. Father relation
father(X, Y) :-
    parent(X, Y),
    male(X).

% 3. Grandfather relation
grandfather(X, Y) :-
    father(X, Z),
    parent(Z, Y).

% 4. Grandmother relation
grandmother(X, Y) :-
    mother(X, Z),
    parent(Z, Y).

% 5. Sister relation
sister(X, Y) :-
    mother(M, X), mother(M, Y),
    father(F, X), father(F, Y),
    female(X),
    X \= Y.

% 6. Brother relation
brother(X, Y) :-
    mother(M, X), mother(M, Y),
    father(F, X), father(F, Y),
    male(X),
    X \= Y.
