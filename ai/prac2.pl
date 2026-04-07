% Write a Prolog program to calculate sum of two numbers.
main1:-
    write("Enter 1st number: "),
    read(X),
    write("Enter 2nd number: "),
    read(Y),
    sum(X, Y, C),
    write("Sum is: "),
    write(C).

sum(X, Y, Sum):-
    Sum is X+Y.


% Write a Prolog program to calculate product of two numbers.
main2:-
    write("Enter 1st number: "),
    read(X),
    write("Enter 2nd number: "),
    read(Y),
    product(X, Y, C),
    write("Product is: "),
    write(C).

product(X, Y, Prod):-
    Prod is X*Y.


% Q5 Maximum of two numbers
main3:-
    write("Enter 1st number: "),
    read(X),
    write("Enter 2nd number: "),
    read(Y),
    findGreater(X, Y, C),
    write("Max of two number is: "),
    write(C).

findGreater(X, Y, Greater):-
    X > Y,
    Greater is X.

findGreater(X, Y, Greater):-
    Greater is Y.


% Q6 Write a program in PROLOG to implement factorial (N, F) where F represents the factorial of a number N.
main4:-
    write("Enter number N: "),
    read(N),
    factorial(N, F),
    write("Factorial of "),
    write(N),
    write(" is: "),
    write(F).

% Base Case
factorial(0, 1).

% Recursive Case
factorial(N, F):-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N*F1.


% Q7 Write a program in PROLOG to implement generate_fib(N,T) where T represents the Nth term of the Fibonacci series.
main5:-
    write("Enter N: "),
    read(N),
    generate_fib(N, T),
    write(T),
    write(" is the "),
    write(N),
    write("th term of Fibonacci series").

% Base Case
generate_fib(0, 0).
generate_fib(1, 1).

% Recursive Case
generate_fib(N, T):-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    generate_fib(N1, T1),
    generate_fib(N2, T2),
    T is T1 + T2.

% Q8 Write a PROLOG program to implement power (Num, Pow, Ans) : where Num is raised to the power Pow to get Ans.
main6:-
    write("Enter number: "),
    read(Num),
    write("Enter power: "),
    read(Pow),
    power(Num, Pow, Ans),
    write(Num),
    write("^"),
    write(Pow),
    write(" = "),
    write(Ans).

% Base Case
power(_, 0, 1).

% Recursive Case
power(Num, Pow, Ans):-
    Pow > 0,
    P1 is Pow - 1,
    power(Num, P1, A1),
    Ans is Num * A1.


% Q9 PROLOG program to implement multi (N1, N2, R) : where N1 and N2 denotes the numbers to be multiplied and R represents the result.
main7:-
    write("Enter N1: "),
    read(N1),
    write("Enter N2: "),
    read(N2),
    multi(N1, N2, R),
    write("Result : "),
    write(R).

% Base Case
multi(_, 0, 0).

% Recursive Case for Positive Integers
multi(N1, N2, R):-
    N2 > 0,
    N2_1 is N2 - 1,
    multi(N1, N2_1, R1),
    R is R1 + N1.

% Recursive Case for Negative Integers
multi(N1, N2, R):-
    N2 < 0,
    N2_1 is N2 + 1,
    multi(N1, N2_1, R1),
    R is R1 - N1.

% Q10 Write a PROLOG program to implement memb(X, L): to check whether X is a member of L or not.
main8:-
    write("Enter X: "),
    read(X),
    write("Enter List: "),
    read(L),
    memb(X, L).

memb(X, [X | Tail]).

memb(X, [Head | Tail]):-
    memb(X, Tail).
    

% Q11 Write a PROLOG program to implement sumlist(L, S) so that S is the sum of a given list L
main9:-
    write("Enter list: "),
    read(L),
    sumlist(L, S),
    write("Sum of list is: "),
    write(S).

% Base Case
sumlist([], 0).

% Recursive Case
sumlist([H | T], S):-
    sumlist(T, S1),
    S is H + S1.


% Q12 maxlist(L, M) so that M is maximum number in the list.
main10:-
    write("Enter list: "),
    read(L),
    maxlist(L, M),
    write("Maximum element of list is: "),
    write(M).

% Base Case
maxlist([X], X).

% Recursive Case
maxlist([H | T], M):-
    maxlist(T, M1),
    M is max(H, M1).



% Q13 conc(L1, L2, L3) where L2 is list to be appended with L1 to get the resulted list L3.
main11:-
    write("Enter first list: "),
    read(L1),
    write("Enter second list: "),
    read(L2),
    conc(L1, L2, L3),
    write("Concatenated list is: "),
    write(L3).

% Base Case
conc([], L2, L2).

% Recursive Case
conc([H | T], L2, [H | R]):-
    conc(T, L2, R).


% Q14 insert(I, N, L, R) that inserts an item I into Nth position of list L to generate a list R.
main12:-
    write("Enter element to insert: "),
    read(I),
    write("Enter position (N): "),
    read(N),
    write("Enter list: "),
    read(L),
    insert(I, N, L, R),
    write("Resultant list is: "),
    write(R).

% Base Case: Insert at position 1
insert(I, 1, L, [I | L]).

% Recursive Case
insert(I, N, [H | T], [H | R]):-
    N > 1,
    N1 is N - 1,
    insert(I, N1, T, R).


% Q15. Write a PROLOG program to implement delete(N, L, R) that removes the element on Nth position from a list L to generate a list R.
main13:-
    write("Enter position N: "),
    read(N),
    write("Enter List: "),
    read(L),
    delete(N, L, R),
    write("Resulting List: "),
    write(R).

% Base Case: remove 1st element
delete(1, [_|T], T).

% Recursive Case
delete(N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    delete(N1, T, R).


% Q3 reverse(L, R) where List L is original and List R is reversed list.
main14:-
    write("Enter List: "),
    read(L),
    reverse(L, R),
    write("Reversed List: "),
    write(R).

% Base Case
reverse([], []).

% Recursive Case
reverse([H|T], R) :-
    reverse(T, RT),
    append(RT, [H], R).



% Q12 evenlength(List) and oddlength(List) so that they are true if their argument is a list of even or odd length respectively.
main15:-
    write("Enter List: "),
    read(L),
    write("Is Even: "),
    evenList(L).

evenList([]).
evenList([_ | T]):-
    oddList(T).

oddList([_]).
oddList([_ | T]):-
    evenList(T).
