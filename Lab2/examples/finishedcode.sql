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
	InstituteId             integer NULL,
	PRIMARY KEY (RefereeId),
	CONSTRAINT R_2 FOREIGN KEY (InstituteId) REFERENCES EducationInstitute (InstituteId)
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
	PRIMARY KEY (ReferenceId),
	CONSTRAINT R_5 FOREIGN KEY (RefereeId) REFERENCES Referee (RefereeId)
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
