create table TEAMS(
  TeamID         integer NOT NULL,
  TeamName       varchar(50) NULL,
  TeamCountry    varchar(100) NULL
);

create table MATCHES(
  MatchID       integer NOT NULL,
  TeamA_ID      integer,
  TeamB_ID      integer,
  Goal_A        integer,
  Goal_B        integer,
  Competition   varchar(100)
);