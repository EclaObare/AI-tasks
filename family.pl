% Facts
male(john).
male(peter).
male(david).

female(mary).
female(susan).
female(linda).

parent(john, peter).
parent(mary, peter).

parent(john, susan).
parent(mary, susan).

parent(peter, david).
parent(linda, david).

% Rules
father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).