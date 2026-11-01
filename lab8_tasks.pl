
% Task 2: sumlist(List, Sum)
% Base case: an empty list sums to zero.
sumlist([], 0).

% Recursive case: sum the tail, then add the head.
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, TailSum),
    Sum is Head + TailSum.

% Task 3: Read three numbers, then print their total and average.
% Every number entered in SWI-Prolog must end with a period.
total_average :-
    write('Enter the first number: '),
    read(A),
    write('Enter the second number: '),
    read(B),
    write('Enter the third number: '),
    read(C),
    Total is A + B + C,
    Average is Total / 3,
    write('Total = '), write(Total), nl,
    write('Average = '), write(Average), nl.

% Task 2 queries:
% ?- sumlist([1,2,5,7], Sum).   % Sum = 15.
% ?- sumlist([], Sum).          % Sum = 0.
%
/* Task 3 query:
 ?- total_average.
 Enter the first number: 10.
 Enter the second number: 20.
 Enter the third number: 30.
 Total = 60
 Average = 20.0 */
