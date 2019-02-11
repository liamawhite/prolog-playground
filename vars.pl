happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

dances(alice) :-
    happy(alice),
    with_albert(alice).

male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

% parent(X, bob), dances(X). - Is Bob's parent and dances
% X = alice

% parent(Y, carl), parent(X, Y). - Carl's parents and his grandparents
% X = albert, Y = bob
% X = alice, Y = bob

% parent(albert, X), parent(X, Y). - Albert's grandchildren
% X = bob, Y = charlie
% X = bob, Y = carl

get_grandchild(Z) :-
    parent(Z, X),
    parent(X, Y),
    format('~w is the grandchild of ~w.~n', [Y, Z]).

get_grandparent(Z) :-
    parent(X, Z),
    parent(Y, X),
    format('~w is the grandparent of ~w.~n', [Y, Z]).

brother(bob, bill).
% parent(X, carl), brother(X, Y). - Who is Carl's uncle?
% X = bob, Y = bill


% male(_). - Check for predicates
