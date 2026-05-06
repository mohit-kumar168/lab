% Q2: Concatenate List
main1:-
    write("Enter first list: "),
    read(L1),
    write("Enter second list: "),
    read(L2),
    conc(L1, L2, L3),
    write("Concatenated List: "),
    write(L3).

% Base Case
conc([], L2, L2).

% Recursive Case
conc([H | T], L2, [H | R]):-
    conc(T, L2, R).


% Q3: Reverse List
main2:-
    write("Enter list: "),
    read(L),
    reverse(L, R),
    write("Reversed List: "),
    write(R).

% Base Case
reverse([], []).

% Recursive Case
reverse([H | T], R):-
    reverse(T, RT),
    append(RT, [H], R).


% Q4: Sum of two number
main3:-
    write("Enter first number: "),
    read(N1),
    write("Enter second number: "),
    read(N2),
    sum(N1, N2, N),
    write("Sum of "),
    write(N1),
    write(" and "),
    write(N2),
    write(" is: "),
    write(N).

% Sum Function
sum(N1, N2, N):-
    N is N1 + N2.


% Q5: Max of three numbers
main4:-
    write("Enter first number: "),
    read(N1),
    write("Enter second number: "),
    read(N2),
    max(N1, N2, M),
    write("Max Number is: "),
    write(M).

% Max Function
max(N1, N2, M):-
    N1 > N2,
    M is N1.

max(N1, N2, M):-
    N1 < N2,
    M is N2.


% Q6: Implement factorial
main5:-
    write("Enter n: "),
    read(N),
    fact(N, F),
    write("Factorial of "),
    write(N),
    write(" is: "),
    write(F).

% Base Case
fact(0, 1).

% Recursive Case
fact(N, F):-
    N > 0,
    N1 is N - 1,
    fact(N1, F1),
    F is N * F1.


% Q7: Generate fibonacci series
main6:-
    write("Enter n: "),
    read(N),
    generate_fib(N, T),
    write("Fibonacci series till "),
    write(N),
    write(" term is: "),
    write(T).

% Base Case
fib(0, 0).
fib(1, 1).

% Recursive Case
fib(N, T):-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, T1),
    fib(N2, T2),
    T is T1 + T2.

generate_fib(0, []).

generate_fib(N, L):-
    N > 0,
    N1 is N - 1,
    generate_fib(N1, L1),
    fib(N1, F),
    append(L1, [F], L).


% Q8: Implement power (Num, Pow, Ans)
main7:-
    write("Enter n: "),
    read(Num),
    write("Enter power: "),
    read(Pow),
    power(Num, Pow, Ans),
    write("Power of "),
    write(Num),
    write("^"),
    write(Pow),
    write(" is: "),
    write(Ans).

% Base Case
power(_, 0, 1).

% Recursive Case
power(Num, Pow, Ans):-
    Pow > 0,
    P1 is Pow - 1,
    power(Num, P1, A1),
    Ans is Num * A1.


% Q9: Implement multi(N1, N2, R)
main8:-
    write("Enter first number: "),
    read(N1),
    write("Enter second number: "),
    read(N2),
    multi(N1, N2, R),
    write(N1),
    write(" * "),
    write(N2),
    write(" = "),
    write(R).

% Base Case
multi(_, 0, 0).

% Recursive Case for positive integers
multi(N1, N2, R):-
    N2 > 0,
    N2_1 is N2 - 1,
    multi(N1, N2_1, R1),
    R is R1 + N1.

% Recursive Case for negative integers
multi(N1, N2, R):-
    N2 < 0,
    N2_1 is N2 + 1,
    multi(N1, N2_1, R1),
    R is R1 - N1.


% Q10: Check Member is in the list
main9:-
    write("Enter List: "),
    read(L),
    write("Enter member: "),
    read(X),
    memb(X, L).

% Base Case
memb(X, [X | T]).

% Recursive Case
memb(X, [H | T]):-
    memb(X, T).


% Q11: Implement Sumlist(L, S) where S is sum of the list
main10:-
    write("Enter List: "),
    read(L),
    sumlist(L, S),
    write("Sum of the list is: "),
    write(S).

% Base Case
sumlist([], 0).

% Recursive Case
sumlist([H | T], S):-
    sumlist(T, S1),
    S is H + S1.


% Q12: Implement two predicates evenlength(List) and oddlength(List)
main11:-
    write("Enter List: "),
    read(L),
    write("Is Even: "),
    evenLength(L).

evenLength([]).
evenLength([_ | T]):-
    oddLength(T).

oddLength([_]).
oddLength([_ | T]):-
    evenLength(T).


% Q13: Implement maxlist(L, M)
main12:-
    write("Enter List: "),
    read(L),
    maxlist(L, M),
    write("Maximum element in the list is: "),
    write(M).

% Base Case
maxlist([H], H).

% Recursive Case
maxlist([H | T], M):-
    maxlist(T, M1),
    M is max(H, M1).


% Q14: Implement Insert(I, N, L, R)
main13:-
    write("Enter List: "),
    read(L),
    write("Enter element to be insert: "),
    read(I),
    write("Enter position: "),
    read(N),
    insert(I, N, L, R),
    write("New List after insertion: "),
    write(R).

% Base Case
insert(I, 1, L, [I | L]).

% Recursive Case
insert(I, N, [H | T], [H | R]):-
    N > 1,
    N1 is N - 1,
    insert(I, N1, T, R).


% Q15: Implement delete(N, L, R)
main14:-
    write("Enter Position: "),
    read(N),
    write("Enter List: "),
    read(L),
    delete(N, L, R),
    write("New list after deleting an elem: "),
    write(R).

% Base Case
delete(1, [_ | T], T).

% Recursive Case
delete(N, [H | T], [H | R]):-
    N > 1,
    N1 is N - 1,
    delete(N1, T, R).
