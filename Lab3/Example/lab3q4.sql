DROP TABLE TEAMS CASCADE CONSTRAINTS PURGE;
DROP TABLE MATCHES CASCADE CONSTRAINTS PURGE;

create table TEAMS(
  TeamID         integer NOT NULL,
  TeamName       varchar(50) NULL,
  TeamCountry    varchar(100) NULL,
  PRIMARY KEY(TeamID)
);

create table MATCHES(
  MatchID       integer NOT NULL,
  TeamA_ID      integer NULL,
  TeamB_ID      integer NULL,
  Goal_A        integer NULL,
  Goal_B        integer NULL,
  Competition   varchar(100) NULL,
  PRIMARY KEY(MatchID),
  CONSTRAINT R_1 FOREIGN KEY (TeamA_ID) REFERENCES TEAMS (TeamID),
  CONSTRAINT R_2 FOREIGN KEY (TeamB_ID) REFERENCES TEAMS (TeamID)
);

insert into TEAMS values(1, 'Arsenal', 'England');
insert into TEAMS values(2, 'Manchester United', 'England');
insert into TEAMS values(3, 'Chelsea', 'England');
insert into TEAMS values(4, 'Manchester City', 'England');
insert into TEAMS values(5, 'Barcellona', 'Spain');
insert into TEAMS values(6, 'Real Madrid', 'Spain');
insert into TEAMS values(7, 'Getafe', 'Spain');
insert into TEAMS values(8, 'Sevilla', 'Spain');

create table log_teams (
  logID integer,
  teamID integer,
  insertDate date,
  PRIMARY KEY(logID, teamID),
  foreign key (TeamID) references Teams(TeamID)
);

CREATE OR REPLACE TRIGGER
  LOG_DATE
  AFTER INSERT
    ON TEAMS
    FOR EACH ROW

    BEGIN
      insert into LOG_TEAM
        (TeamID, insertDate) values (:new.teamID, CURRENT_TIMESTAMP);
END;

CREATE OR REPLACE TRIGGER
  LOG_DATE
  BEFORE INSERT
    ON MATCHES
    FOR EACH ROW

    BEGIN
      insert into LOG_TEAM
        (TeamID, insertDate) values (:new.teamID, CURRENT_TIMESTAMP);
END;
