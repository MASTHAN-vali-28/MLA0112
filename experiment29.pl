% --- Database (Facts) ---
% Format: planet(Name, Type, DistanceFromSunAU).
planet(mercury, terrestrial, 0.39).
planet(venus, terrestrial, 0.72).
planet(earth, terrestrial, 1.00).
planet(mars, terrestrial, 1.52).
planet(jupiter, gas_giant, 5.20).
planet(saturn, gas_giant, 9.58).

% --- Rules ---
% Find planets closer to the sun than a specific limit
closer_than(Planet, Limit) :-
    planet(Planet, _, Distance),
    Distance < Limit.
