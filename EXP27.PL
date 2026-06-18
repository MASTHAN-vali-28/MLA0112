% Database facts: person(Name, date_of_birth(Day, Month, Year))
person(john, dob(15, may, 1995)).
person(alice, dob(22, april, 1998)).
person(bob, dob(3, january, 1992)).
person(clara, dob(15, august, 2001)).

% Query rule to find someone's full DOB by name
get_dob(Name, Day, Month, Year) :-
    person(Name, dob(Day, Month, Year)).

% Query rule to find people born in a specific year
born_in_year(Name, Year) :-
    person(Name, dob(_, _, Year)).
