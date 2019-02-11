
% Romeo loves Juliet (fact or clause).
% loves is predicate.
% Romeo and Juliet are atoms (constants).
loves(romeo, juliet).

% Juliet loves Romeo IF Romeo loves Juliet.
loves(juliet, romeo) :-
    loves(romeo, juliet).




% Rules are used when a fact wants to rely on a group other facts.
happy(alice).
happy(bob).
happy(charlie).
with_bob(alice).

% Alice runs if she is happy.
runs(alice) :-
    happy(alice).

% Bob dances if he is happy AND with Alice.
dances(bob) :-
    happy(bob),
    with_bob(alice).

% Function atom
does_bob_dance :- dances(bob),
    write('Bob dances with Alice').
