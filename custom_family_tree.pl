% Facts

male(james).
male(mark).
male(paul).
male(john).

female(sarah).
female(lisa).
female(ann).
female(grace).

% Parent relationships

parent(james, mark).
parent(sarah, mark).

parent(james, lisa).
parent(sarah, lisa).

parent(mark, paul).
parent(ann, paul).

parent(mark, grace).
parent(ann, grace).

parent(lisa, john).

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

grandchild(X, Y) :-
    grandparent(Y, X).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

cousin(X, Y) :-
    parent(A, X),
    parent(B, Y),
    sibling(A, B).

uncle(X, Y) :-
    male(X),
    sibling(X, Z),
    parent(Z, Y).

aunt(X, Y) :-
    female(X),
    sibling(X, Z),
    parent(Z, Y).