drop table Apps_NOT_Normalized;
Create Table Apps_NOT_Normalized(
  App_No integer,
  StudentID integer,
  StudentName varchar(50),
  Street varchar(100),
  State varchar(30),
  ZipCode varchar(7),
  App_Year integer,
  ReferenceName varchar(100),
  RefInstitution  varchar(100),
  ReferenceStatement varchar(500),
  PriorSchoolId integer,
  PriorSchoolAddr varchar(100),
  GPA number(2)
);

insert into Apps_NOT_Normalized values(1,1,'Mark','Grafton Street','New York','NY234',2003,'Dr. Jones','Trinity College','Good guy',1,'Castleknock',65);
insert into Apps_NOT_Normalized values(1,1,'Mark','Grafton Street','New York','NY234',2004,'Dr. Jones','Trinity College','Good guy',1,'Castleknock',65);
insert into Apps_NOT_Normalized values(2,1,'Mark','White Street','Florida','Flo435',2007,'Dr. Jones','Trinity College','Good guy',1,'Castleknock',65);
insert into Apps_NOT_Normalized values(2,1,'Mark','White Street','Florida','Flo435',2007,'Dr. Jones','Trinity College','Good guy',2,'Loreto College',87);
insert into Apps_NOT_Normalized values(3,1,'Mark','White Street','Florida','Flo435',2012,'Dr. Jones','U Limerick','Very Good guy',1,'Castleknock',65);
insert into Apps_NOT_Normalized values(3,1,'Mark','White Street','Florida','Flo435',2012,'Dr. Jones','U Limerick','Very Good guy',2,'Loreto College',87);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2010,'Dr. Byrne','DIT','Perfect',1,'Castleknock',90);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2010,'Dr. Byrne','DIT','Perfect',3,'St. Patrick',76);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2011,'Dr. Byrne','DIT','Perfect',1,'Castleknock',90);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2011,'Dr. Byrne','DIT','Perfect',3,'St. Patrick',76);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2012,'Dr. Byrne','UCD','Average',1,'Castleknock',90);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2012,'Dr. Byrne','UCD','Average',3,'St. Patrick',76);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2012,'Dr. Byrne','UCD','Average',4,'DBS',66);
insert into Apps_NOT_Normalized values(2,2,'Sarah','Green Road','California','Cal123',2012,'Dr. Byrne','UCD','Average',5,'Harvard',45);
insert into Apps_NOT_Normalized values(1,3,'Paul','Red Crescent','Carolina','Ca455',2012,'Dr. Jones','Trinity College','Poor',1,'Castleknock',45);
insert into Apps_NOT_Normalized values(1,3,'Paul','Red Crescent','Carolina','Ca455',2012,'Dr. Jones','Trinity College','Poor',3,'St. Patrick',67);
insert into Apps_NOT_Normalized values(1,3,'Paul','Red Crescent','Carolina','Ca455',2012,'Dr. Jones','Trinity College','Poor',4,'DBS',23);
insert into Apps_NOT_Normalized values(1,3,'Paul','Red Crescent','Carolina','Ca455',2012,'Dr. Jones','Trinity College','Poor',5,'Harvard',67);
insert into Apps_NOT_Normalized values(3,3,'Paul','Yellow Park','Mexico','Mex1',2008,'Prof. Cahill','UCC','Excellent',1,'Castleknock',45);
insert into Apps_NOT_Normalized values(3,3,'Paul','Yellow Park','Mexico','Mex1',2008,'Prof. Cahill','UCC','Excellent',3,'St. Patrick',67);
insert into Apps_NOT_Normalized values(3,3,'Paul','Yellow Park','Mexico','Mex1',2008,'Prof. Cahill','UCC','Excellent',4,'DBS',23);
insert into Apps_NOT_Normalized values(3,3,'Paul','Yellow Park','Mexico','Mex1',2008,'Prof. Cahill','UCC','Excellent',5,'Harvard',67);
insert into Apps_NOT_Normalized values(1,4,'Jack','Dartry Road','Ohio','Oh34',2009,'Prof. Lillis','DIT','Fair',3,'St. Patrick',29);
insert into Apps_NOT_Normalized values(1,4,'Jack','Dartry Road','Ohio','Oh34',2009,'Prof. Lillis','DIT','Fair',4,'DBS',88);
insert into Apps_NOT_Normalized values(1,4,'Jack','Dartry Road','Ohio','Oh34',2009,'Prof. Lillis','DIT','Fair',5,'Harvard',66);
insert into Apps_NOT_Normalized values(2,5,'Mary','Malahide Road','Ireland','IRE',2009,'Prof. Lillis','DIT','Good girl',3,'St. Patrick',44);
insert into Apps_NOT_Normalized values(2,5,'Mary','Malahide Road','Ireland','IRE',2009,'Prof. Lillis','DIT','Good girl',4,'DBS',55);
insert into Apps_NOT_Normalized values(2,5,'Mary','Malahide Road','Ireland','IRE',2009,'Prof. Lillis','DIT','Good girl',5,'Harvard',66);
insert into Apps_NOT_Normalized values(2,5,'Mary','Malahide Road','Ireland','IRE',2009,'Prof. Lillis','DIT','Good girl',1,'Castleknock',74);
insert into Apps_NOT_Normalized values(1,5,'Mary','Black Bay','Kansas','Kan45',2005,'Dr. Byrne','DIT','Perfect',3,'St. Patrick',44);
insert into Apps_NOT_Normalized values(1,5,'Mary','Black Bay','Kansas','Kan45',2005,'Dr. Byrne','DIT','Perfect',4,'DBS',55);
insert into Apps_NOT_Normalized values(1,5,'Mary','Black Bay','Kansas','Kan45',2005,'Dr. Byrne','DIT','Perfect',5,'Harvard',66);
insert into Apps_NOT_Normalized values(3,6,'Susan','River Road','Kansas','Kan45',2011,'Prof. Cahill','UCC','Messy',1,'Castleknock',88);
insert into Apps_NOT_Normalized values(3,6,'Susan','River Road','Kansas','Kan45',2011,'Prof. Cahill','UCC','Messy',3,'St. Patrick',77);
insert into Apps_NOT_Normalized values(3,6,'Susan','River Road','Kansas','Kan45',2011,'Prof. Cahill','UCC','Messy',4,'DBS',56);
insert into Apps_NOT_Normalized values(3,6,'Susan','River Road','Kansas','Kan45',2011,'Prof. Cahill','UCC','Messy',2,'Loreto College',45);

select * from Apps_NOT_Normalized;

Schools

1

student

student, id, student name, zipcode

1, Mark
2, Sarah
3, Paul
4, Jack
5, Mary
6, Susan

zip

zipcode, street, state

NY234, Grafton Street, New York
Flo435, White Street, Flordia
Cal123, Green Road, California
Ca455, Red Crescent, California
Mex1, Yellow, Mexico
Oh34, Dartry Road, Ohio
IRE, Malahide Road, Ireland
Kan45, River Road, Kansas

schools

/*1, Castleknock
2, Loreto College
3, St.Patrick
4, DBS
5, Harvard*/

Referee

RefereeId, RefereeName, SchoolId

1, Dr. Jones, 1
2, Dr. Bryne
3, Prof. Cahill,
4, Prof. Lillis

Reference
insert into Reference values(1, 'Good guy', 1);
insert into Reference values(2, 'Very Good guy', 1);
insert into Reference values(3, 'Perfect', 2);
insert into Reference values(4, 'Average', 2);
insert into Reference values(5, 'Poor', 1);

Application
1,1,20031
