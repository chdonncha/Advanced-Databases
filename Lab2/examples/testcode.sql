create table Zip (
  ZipCode varchar(7),
  Street varchar(30),
  State varchar(30),

primary key(ZipCode, Street)
);

create table Schools (
  SchoolId integer primary key,
  SchoolName varchar(100),
  SchoolAddress varchar(100)
);

create table student (
  StudentId integer primary key,
  StudentName varchar(50),
  ZipCode varchar(7),

  foreign key (ZipCode) references Zip(ZipCode)
);

  create table Referee (
    RefereeId integer primary key,
    RefereeName varchar(50),
    SchoolId integer,

    foreign key (SchoolId) references Schools(SchoolId),
    constraint un_ref_school unique(RefereeName, SchoolId)
);

create table Referee_School (
  RefereeId integer,
  SchoolId integer,

  primary key(RefereeId, SchooolId),
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
  ApplicationNumber integer,
  StudentId integer,
  AppYear integer,
  ReferenceId integer,
  PriorSchoolId integer,
  GPA number(2),

  primary key (ApplicationNumber, StudentId, AppYear),

  foreign key StudentId references Student(StudentId),
  foreign key ReferenceId references Reference(ReferenceId),
  foreign key PriorSchoolId references Schools(SchoolId)
);
