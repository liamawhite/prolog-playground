what_grade(5) :-
    write('Go to Kindergarten').

what_grade(X) :-
    Grade is X - 5,
    format('Go to grade ~w', [Grade]).
