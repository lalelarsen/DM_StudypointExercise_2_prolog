%%%%%FACTS

%dates where there are classes
date(1/1).
date(1/2).
date(1/3).
date(1/4).
date(1/5).
date(1/6).
date(1/7).
date(1/8).
date(1/9).

%classes for the students to take
class(science).
class(biology).
class(english).

%the students
student(pam).
student(bob).
student(kim).
student(matt).
student(lee).

%the rooms the classes are held
room(1).
room(2).
room(3).

%dates when which clas is held
classdate(science,1/1).
classdate(biology,1/2).
classdate(english,1/3).
classdate(science,1/4).
classdate(biology,1/5).
classdate(english,1/6).
classdate(science,1/7).
classdate(biology,1/8).
classdate(english,1/9).

%dedicated room for each class
location(science,1).
location(biology,2).
location(english,3).

%the students studies
studies(pam,biology).
studies(pam,science).
studies(bob,english).
studies(kim,science).
studies(kim,english).
studies(matt,biology).
studies(lee,biology).
studies(lee,english).

%%%%%RULES

%two students are class mates if they share a class
classmates(X,Y) :-
	studies(X,Z),
	studies(Y,Z).
	
%a student is considered not lazy if they participate in 2 classes
notLazy(X) :-
	studies(X,Y),
	studies(X,Z),
	not(Y=Z).

%%%%%QUESTIONS

%what does pam study?
%forall(studies(pam,X),writeln(X)).  -  expected result: biology, science

%what class does kim have the 1/6th?
%studies(kim,Y),classdate(Y,1/6).  -  expected result: english

%what class does kim have the 1/8th?
%studies(kim,Y),classdate(Y,1/8).  -  expected result: false

%what dates does lee have classes?
%forall((studies(lee,X),classdate(X,Y)),writeln(X-Y)).  -  expected result: biology-1/2, biology-1/5, biology-1/8, english-1/3, english-1/6, english-1/9

%what classes does matt and lee share?
%forall((studies(matt,X),studies(lee,X)),writeln(X)).  -  expected result: biology



