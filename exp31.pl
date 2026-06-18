% Facts: diet_plan(Disease, RecommendedFoods, AvoidFoods)
diet_plan(diabetes, [oats, broccoli, spinach, fish, chicken], [sugar, white_bread, soda, sweets]).
diet_plan(hypertension, [bananas, berries, garlic, skim_milk, yogurt], [salt, pickles, canned_soup, processed_meat]).
diet_plan(obesity, [salad, green_tea, apples, lean_protein], [fast_food, fried_chicken, butter, ice_cream]).
diet_plan(anemia, [spinach, lentils, red_meat, eggs, pomegranate], [coffee, tea, excess_calcium]).

% Query rule: Suggest foods to eat for a disease
suggest_diet(Disease, Recommended) :-
    diet_plan(Disease, Recommended, _).

% Query rule: Warn against foods to avoid for a disease
foods_to_avoid(Disease, Avoid) :-
    diet_plan(Disease, _, Avoid).

% Query rule: Check if a specific food is safe for a disease
is_safe(Food, Disease) :-
    diet_plan(Disease, Recommended, _),
    member(Food, Recommended).
