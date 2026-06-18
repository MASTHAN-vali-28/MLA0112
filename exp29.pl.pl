% Facts about different types of birds
bird(sparrow).
bird(eagle).
bird(penguin).
bird(ostrich).
bird(pigeon).

% Facts identifying birds that cannot fly (ostriches and penguins)
cannot_fly(penguin).
cannot_fly(ostrich).

% Rule to determine if a bird can fly
can_fly(X) :-
    bird(X),
    \+ cannot_fly(X). % \+ means "not" in Prolog

% Rule to print the flight status of a bird
check_flight(X) :-
    can_fly(X),
    format('Yes, the ~w can fly.~n', [X]).

check_flight(X) :-
    bird(X),
    cannot_fly(X),
    format('No, the ~w cannot fly.~n', [X]).

check_flight(X) :-
    \+ bird(X),
    format('~w is not recognized as a bird in this database.~n', [X]).
