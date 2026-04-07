/*

  -----          -----
 | pam |        | tom |
  -----          -----
     \            /  \
      \          /    \
       \        /      \
        \      /        \
	  -----        -----
	 | bob |      | liz |
	  -----        -----
	  /   \
	 /     \
	/       \
       /         \
     -----      -----
    | ann |    | pat |
     -----      -----
                 /
		/
	       /
	      /
	    -----
	   | jim |
	    -----

*/

%Facts
parent(pat, jim).
parent(bob, pat).
parent(bob, ann).
parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
male(tom).
male(bob).
male(jim).
female(ann).
female(liz).
female(pat).
female(pam).

%Rules
grandparent(X, Z):- 
    parent(X, Y), 
    parent(Y,Z).

grandchild(Z, X):- 
    parent(Y, Z), 
    parent(X, Y).

offspring(X, Y):- 
    parent(Y, X).

mother(X, Y):- 
    parent(X, Y), 
    female(X).

sister(X, Y):- 
    parent(Z, X), 
    parent(Z, Y), 
    female(X), 
    X \= Y.

commonparent(X, Y):- 
    parent(Z, X), 
    parent(Z, Y), 
    X \= Y.

haschild(X):- 
    parent(X, _).

predecessor(X, Y):- 
    parent(X, Y).

predecessor(X, Y):- 
    parent(X, Z), 
    predecessor(Z, Y).

aunt(X, Y):-
    parent(Z, Y),
    sister(X, Z).

