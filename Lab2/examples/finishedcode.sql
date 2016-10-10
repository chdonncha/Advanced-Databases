/*DROP TABLE Zip CASCADE CONSTRAINTS PURGE;
DROP TABLE Schools CASCADE CONSTRAINTS PURGE;
DROP TABLE Student CASCADE CONSTRAINTS PURGE;
DROP TABLE Referee CASCADE CONSTRAINTS PURGE;
DROP TABLE Referee_School CASCADE CONSTRAINTS PURGE;
DROP TABLE Reference CASCADE CONSTRAINTS PURGE;
DROP TABLE Application CASCADE CONSTRAINTS PURGE;*/

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
	RefereeId            integer NOT NULL,
	InstituteId             integer NULL,
	PRIMARY KEY (RefereeId),
	CONSTRAINT R_3 FOREIGN KEY (RefereeId) REFERENCES Referee (RefereeId),
	CONSTRAINT R_4 FOREIGN KEY (InstituteId) REFERENCES EducationInstitute (InstituteId)
);

CREATE TABLE Zip
(
	ZipCode              varchar(7) NOT NULL,
	Street               varchar(30) NULL,
	State                varchar(30) NULL,
	PRIMARY KEY (ZipCode)
);

CREATE TABLE Student
(
	StudentId            integer NOT NULL,
	StudentName          varchar(50) NULL,
	ZipCode              varchar(7) NULL,
	PRIMARY KEY (StudentId),
	CONSTRAINT R_1 FOREIGN KEY (ZipCode) REFERENCES Zip (ZipCode)
);

CREATE TABLE Reference
(
	ReferenceId          integer NOT NULL,
	ReferenceStatement   varchar(500) NULL,
	RefereeId            integer NULL,
	PRIMARY KEY (ReferenceId)
);

CREATE TABLE Application
(
	ApplicationNumber    integer NOT NULL,
	StudentId            integer NULL,
	AppYear              integer NULL,
	ReferenceId          integer NULL,
	PriorInstituteId     integer NULL,
	GPA                  number(2) NULL,
	PRIMARY KEY (ApplicationNumber),
	CONSTRAINT R_6 FOREIGN KEY (StudentId) REFERENCES Student (StudentId),
	CONSTRAINT R_7 FOREIGN KEY (ReferenceId) REFERENCES Reference (ReferenceId),
	CONSTRAINT R_8 FOREIGN KEY (PriorInstituteId) REFERENCES EducationInstitute (InstituteId)
);

insert into Zip values('NY234', 'Grafton Street', 'New York');
insert into Zip values('Flo435', 'White Street', 'Flordia');
insert into Zip values('Cal123', 'Green Road', 'California');
insert into Zip values('Ca455', 'Red Crescent', 'California');
insert into Zip values('Mex1', 'Yellow', 'Mexico');
insert into Zip values('Oh34', 'Dartry Road', 'Ohio');
insert into Zip values('IRE', 'Malahide Road', 'Ireland');
insert into Zip values('Kan45', 'River Road', 'Kansas');

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

insert into Student values(1, 'Mark', 'NY234');
insert into Student values(2, 'Sarah', 'Flo435');
insert into Student values(3, 'Paul', 'Mex1');
insert into Student values(4, 'Jack', 'Oh34');
insert into Student values(5, 'Mary', 'Kan45');
insert into Student values(6, 'Susan', 'Kan45');

insert into Referee values(1, 'Dr. Jones');
insert into Referee values(2, 'Dr. Bryne');
insert into Referee values(3, 'Prof. Cahill');
insert into Referee values(4, 'Prof. Lillis');

insert into Reference values(1, 'Good guy', 1);
insert into Reference values(2, 'Very Good guy', 1);
insert into Reference values(3, 'Perfect', 2);
insert into Reference values(4, 'Average', 2);
insert into Reference values(5, 'Poor', 1);

insert into RefereeInstitute values(1, 6);
--insert into RefereeInstitute values(1, 7);
insert into RefereeInstitute values(2, 8);
--insert into RefereeInstitute values(2, 9);
insert into RefereeInstitute values(3, 10);
insert into RefereeInstitute values(4, 8);

Application
ApplicationNumber, StudentId, AppYear, ReferenceId, PriorSchoolId, GPA

insert into Application(1,1,2003,1,1,65);
insert into Application(1,1,2003,1,1,65);
insert into Application(1,1,2003,1,1,65);
insert into Application(1,1,2003,1,1,65);
insert into Application(1,1,2003,1,1,65);
insert into Application(1,1,2003,1,1,65);
insert into Application(1,1,2003,1,1,65);
