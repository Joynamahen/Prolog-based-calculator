
% Operators
sum() :-
    writeln('SUM = A + B'),
    write('A: '), read(A), writeln(A),
    write('B: '), read(B), writeln(B),
    Result is A + B,
    tab(10),
    format('~w + ~w = ~w~n', [A, B, Result]),
    nl.

subtraction() :-
    writeln('SUBTRACTION = A - B'),
    write('A: '), read(A), writeln(A),
    write('B: '), read(B), writeln(B),
    Result is A - B,
    tab(10),
    format('~w - ~w = ~w~n', [A, B, Result]),
    nl.

division() :-
    writeln('DIVISION = A / B '),
    write('A: '), read(A), writeln(A),
    write('B: '), read(B), writeln(B),
    B =\= 0, 
    Result is A / B,
    tab(10),
    format('~w / ~w = ~w~n', [A, B, Result]);
    tab(10),
    writeln('Division by 0 in can'),
    nl.

multiplication() :-
    writeln('MULTIPLICATION = A * B'),
    write('A: '), read(A), writeln(A),
    write('B: '), read(B), writeln(B),
    Result is A * B,
    tab(10),
    format('~w * ~w = ~w~n', [A, B, Result]),
    nl.

% Execution
 executionoperation(1) :-
    sum.

 executionoperation(2) :-
    subtraction.

 executionoperation(3) :-
    division.

 executionoperation(4) :-
    multiplication.

% Test
operations() :-
    writeln('1 - Sum'),
    writeln('2 - Subtraction'),
    writeln('3 - Division'),
    writeln('4 - Multiplication'),
    writeln('5 - Exit').

head() :-
    /* start of the system */
                write('***************************************************************'),nl,
		sleep(0.2),
		write('***************************************************************'),nl,
		sleep(0.2),
		write("######################||| CALCULATOR |||#######################"),nl,
		sleep(0.4),
		write('***************************************************************'),nl,
		sleep(0.4),
                write('***************************************************************'),nl,
		sleep(0.2).

% Program
calc() :-
  head,
    operations,
    writeln('Enter an option: '),
    read(Entry),
    Entry =\= 5,
    executionoperation(Entry),
    calc;
    tab(10),
     
     write('####################### Exit Calculator #####################!'),
     sleep(0.2),
    
    nl.
         
    