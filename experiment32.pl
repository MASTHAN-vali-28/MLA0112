% --- Database (Facts) ---
% Format: symptom(PatientName, Symptom).
symptom(john, fever).
symptom(john, cough).
symptom(mary, chills).
symptom(alex, runny_nose).

% --- Diagnosis Rules ---
% A patient has the flu if they have both a fever AND a cough.
disease(Patient, flu) :-
    symptom(Patient, fever),
    symptom(Patient, cough).

% A patient has a cold if they have chills OR a runny nose.
disease(Patient, cold) :-
    symptom(Patient, chills).
disease(Patient, cold) :-
    symptom(Patient, runny_nose).
