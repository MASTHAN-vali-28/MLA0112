% --- Database (Facts) ---
% Format: has_trait(Animal, Trait).
has_trait(lion, warm_blooded).
has_trait(lion, fur).
has_trait(salmon, cold_blooded).
has_trait(salmon, scales).
has_trait(whale, warm_blooded).
has_trait(whale, fur).

% --- Classification Rules ---
% An animal is a mammal if it is warm-blooded AND has fur.
mammal(Animal) :-
    has_trait(Animal, warm_blooded),
    has_trait(Animal, fur).

% An animal is a fish if it is cold-blooded AND has scales.
fish(Animal) :-
    has_trait(Animal, cold_blooded),
    has_trait(Animal, scales).
