DROP TABLE EducationInstitute CASCADE CONSTRAINTS PURGE;
DROP TABLE Referee CASCADE CONSTRAINTS PURGE;
DROP TABLE RefereeInstitute CASCADE CONSTRAINTS PURGE;
DROP TABLE Address CASCADE CONSTRAINTS PURGE;
DROP TABLE Student CASCADE CONSTRAINTS PURGE;
DROP TABLE Reference CASCADE CONSTRAINTS PURGE;
DROP TABLE Application CASCADE CONSTRAINTS PURGE;
DROP TABLE StudentAddress CASCADE CONSTRAINTS PURGE;

CREATE TABLE EducationInstitute
(
	InstituteId             integer NOT NULL,
	InstituteName           varchar(100) NULL,
	PRIMARY KEY (InstituteId)
);

CREATE TABLE Referee
(
	RefereeId            integer NOT NULL,
	RefereeName          varchar(50) NULL,
	PRIMARY KEY (RefereeId)
);

CREATE TABLE RefereeInstitute
(
  RefIntId             integer NOT NULL,
	RefereeId            integer NOT NULL,
	InstituteId             integer NULL,
	CONSTRAINT R_3 FOREIGN KEY (RefereeId) REFERENCES Referee (RefereeId),
	CONSTRAINT R_4 FOREIGN KEY (InstituteId) REFERENCES EducationInstitute (InstituteId)
);

CREATE TABLE Address
(
  AdderssId            integer NOT NULL,
	ZipCode              varchar(7)  NULL,
	Street               varchar(100) NULL,
	State                varchar(30) NULL,
	PRIMARY KEY (AdderssId)
);

CREATE TABLE Student
(
	StudentId            integer NOT NULL,
	StudentName          varchar(50) NULL,
	PRIMARY KEY (StudentId)
);

CREATE TABLE StudentAddress
(
  StuAddId            integer NOT NULL,
  StudentId           integer NULL,
  AdderssId             integer NULL,
  PRIMARY KEY (StuAddId),
  CONSTRAINT R_9 FOREIGN KEY (StudentId) REFERENCES Student (StudentId),
  CONSTRAINT R_10 FOREIGN KEY (AdderssId) REFERENCES Address (AdderssId)
);

CREATE TABLE Reference
(
	ReferenceId          integer NOT NULL,
	ReferenceStatement   varchar(500) NULL,
	RefereeId            integer NULL,
	PRIMARY KEY (ReferenceId),
  CONSTRAINT R_11 FOREIGN KEY (RefereeId) REFERENCES Referee (RefereeId)
);

CREATE TABLE Application
(
  ApplciationId        integer NOT NULL,
	ApplicationNumber    integer NULL,
	StudentId            integer NULL,
	AppYear              integer NULL,
	ReferenceId          integer NULL,
	PriorInstituteId     integer NULL,
	GPA                  number(2) NULL,
	PRIMARY KEY (ApplciationId),
	CONSTRAINT R_6 FOREIGN KEY (StudentId) REFERENCES Student (StudentId),
	CONSTRAINT R_7 FOREIGN KEY (ReferenceId) REFERENCES Reference (ReferenceId),
	CONSTRAINT R_8 FOREIGN KEY (PriorInstituteId) REFERENCES EducationInstitute (InstituteId)
);

insert into Address values(1, 'NY234', 'Grafton Street', 'New York');
insert into Address values(2, 'Flo435', 'White Street', 'Flordia');
insert into Address values(3, 'Cal123', 'Green Road', 'California');
insert into Address values(4, 'Ca455', 'Red Crescent', 'California');
insert into Address values(5, 'Mex1', 'Yellow', 'Mexico');
insert into Address values(6, 'Oh34', 'Dartry Road', 'Ohio');
insert into Address values(7, 'IRE', 'Malahide Road', 'Ireland');
insert into Address values(8, 'Kan45', 'Black Bay', 'Kansas');
insert into Address values(9, 'Kan45', 'River Road', 'Kansas');

insert into EducationInstitute values(1, 'Castleknock');
insert into EducationInstitute values(2, 'Loreto College');
insert into EducationInstitute values(3, 'St.Patrick');
insert into EducationInstitute values(4, 'DBS');
insert into EducationInstitute values(5, 'Harvard');
insert into EducationInstitute values(6, 'Trinity College');
insert into EducationInstitute values(7, 'U Limerick');
insert into EducationInstitute values(8, 'DIT');
insert into EducationInstitute values(9, 'UCD');
insert into EducationInstitute values(10, 'UCC');

insert into Student values(1, 'Mark');
insert into Student values(2, 'Sarah');
insert into Student values(3, 'Paul');
insert into Student values(4, 'Jack');
insert into Student values(5, 'Mary');
insert into Student values(6, 'Susan');

insert into StudentAddress values(1, 1, 1);
insert into StudentAddress values(2, 1, 2);
insert into StudentAddress values(3, 2, 3);
insert into StudentAddress values(4, 3, 4);
insert into StudentAddress values(5, 3, 5);
insert into StudentAddress values(6, 4, 6);
insert into StudentAddress values(7, 5, 7);
insert into StudentAddress values(8, 5, 8);
insert into StudentAddress values(9, 6, 9);

insert into Referee values(1, 'Dr. Jones');
insert into Referee values(2, 'Dr. Bryne');
insert into Referee values(3, 'Prof. Cahill');
insert into Referee values(4, 'Prof. Lillis');

insert into Reference values(1, 'Good guy', 1);
insert into Reference values(2, 'Very Good guy', 1);
insert into Reference values(3, 'Perfect', 2);
insert into Reference values(4, 'Average', 2);
insert into Reference values(5, 'Poor', 1);
insert into Reference values(6, 'Excellent', 3);
insert into Reference values(7, 'Fair', 4);
insert into Reference values(8, 'Good girl', 4);
insert into Reference values(9, 'Messy', 3);

insert into RefereeInstitute values(1, 1, 6);
insert into RefereeInstitute values(2, 1, 7);
insert into RefereeInstitute values(3, 2, 8);
insert into RefereeInstitute values(4, 2, 9);
insert into RefereeInstitute values(5, 3, 10);
insert into RefereeInstitute values(6, 4, 8);

insert into Application values(1,1,1,2003,1,1,65);
insert into Application values(2,1,1,2004,1,1,65);
insert into Application values(3,2,1,2007,1,1,65);
insert into Application values(4,2,1,2007,1,2,87);
insert into Application values(5,3,1,2012,1,1,65);
insert into Application values(6,3,1,2012,1,2,87);

insert into Application values(7,2,2,2010,3,1,90);
insert into Application values(8,2,2,2010,3,2,76);
insert into Application values(9,2,2,2011,3,2,90);
insert into Application values(10,2,2,2011,3,2,76);
insert into Application values(11,2,2,2012,4,2,90);
insert into Application values(12,2,2,2012,4,2,76);
insert into Application values(13,2,2,2012,4,2,66);
insert into Application values(14,2,2,2012,4,2,45);

insert into Application values(15,1,3,2012,5,1,45);
insert into Application values(16,1,3,2012,5,3,67);
insert into Application values(17,1,3,2012,5,4,23);
insert into Application values(18,1,3,2012,5,5,67);
insert into Application values(19,3,3,2008,6,1,45);
insert into Application values(20,3,3,2008,6,3,67);
insert into Application values(21,3,3,2008,6,4,23);
insert into Application values(22,3,3,2008,6,5,67);

insert into Application values(23,1,4,2009,7,3,29);
insert into Application values(24,1,4,2009,7,4,88);
insert into Application values(25,1,4,2009,7,5,66);

insert into Application values(26,2,5,2009,8,3,44);
insert into Application values(27,2,5,2009,8,4,55);
insert into Application values(28,2,5,2009,8,5,66);
insert into Application values(29,2,5,2009,8,1,74);
insert into Application values(30,1,5,2005,3,3,44);
insert into Application values(31,1,5,2005,3,4,55);
insert into Application values(32,1,5,2005,3,5,66);

insert into Application values(33,3,6,2011,9,1,88);
insert into Application values(34,3,6,2011,9,3,77);
insert into Application values(35,3,6,2011,9,4,56);
insert into Application values(36,3,6,2011,9,2,45);