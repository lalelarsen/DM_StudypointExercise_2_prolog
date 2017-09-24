# DM_StudypointExercise_2_prolog
Frederik Bothmann Larsen

QUESTIONS

what does pam study?
 - forall(studies(pam,X),writeln(X)).  -  expected result: biology, science

what class does kim have the 1/6th?
 - studies(kim,Y),classdate(Y,1/6).  -  expected result: english

what class does kim have the 1/8th?
 - studies(kim,Y),classdate(Y,1/8).  -  expected result: false

what dates does lee have classes?
 - forall((studies(lee,X),classdate(X,Y)),writeln(X-Y)).  -  expected result: biology-1/2, biology-1/5, biology-1/8, english-1/3, english-1/6, english-1/9

what classes does matt and lee share?
 - forall((studies(matt,X),studies(lee,X)),writeln(X)).  -  expected result: biology
