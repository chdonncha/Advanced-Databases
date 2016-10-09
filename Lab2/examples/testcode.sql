#DROP TABLE Zip CASCADE CONSTRAINTS PURGE;
#DROP TABLE Schools CASCADE CONSTRAINTS PURGE;
#DROP TABLE Student CASCADE CONSTRAINTS PURGE;
#DROP TABLE Referee CASCADE CONSTRAINTS PURGE;
#DROP TABLE Referee_School CASCADE CONSTRAINTS PURGE;
#DROP TABLE Reference CASCADE CONSTRAINTS PURGE;
#DROP TABLE Application CASCADE CONSTRAINTS PURGE;

create table Zip (
  ZipCode varchar(7) primary key,
  Street varchar(30),
  State varchar(30)

);

create table Schools (
  SchoolId integer primary key,
  SchoolName varchar(100),
  SchoolAddress varchar(100)
);

create table Student (
  StudentId integer primary key,
  StudentName varchar(50),
  ZipCode varchar(7),

  FOREIGN KEY (ZipCode) REFERENCES Zip (ZipCode)
);

  create table Referee (
    RefereeId integer primary key,
    RefereeName varchar(50),
    SchoolId integer,

    foreign key (SchoolId) references Schools(SchoolId),
    constraint un_ref_school unique(RefereeName, SchoolId)
);

create table Referee_School (
  RefereeId integer primary key,
  SchoolId integer,


  foreign key (RefereeId) references Referee(RefereeId),
  foreign key (SchoolId) references Schools(SchoolId)
);

create table Reference (
  ReferenceId integer primary key,
  ReferenceStatement varchar(500),
  RefereeId integer,

  foreign key (RefereeId) references Referee(RefereeId)
);

create table Application (
  ApplicationNumber integer primary key,
  StudentId integer,
  AppYear integer,
  ReferenceId integer,
  PriorSchoolId integer,
  GPA number(2),

  foreign key (StudentId) references Student(StudentId),
  foreign key (ReferenceId) references Reference(ReferenceId),
  foreign key (PriorSchoolId) references Schools(SchoolId)
);
