% Boolean expression: (A AND B) OR (NOT A AND NOT B)

% AND truth table
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% OR truth table
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% NOT truth table
neg(true, false).
neg(false, true).

% Combine the gates like the lab example.
logicGate(A, B, Output) :-
    and(A, B, FirstAnd),
    neg(A, NotA),
    neg(B, NotB),
    and(NotA, NotB, SecondAnd),
    or(FirstAnd, SecondAnd, Output).

/* Test these queries in SWI-Prolog, pressing ; after each result:
 ?- logicGate(true, true, X).     % X = true.
 ?- logicGate(true, false, X).    % X = false.
 ?- logicGate(false, true, X).    % X = false.
 ?- logicGate(false, false, X).   % X = true. */