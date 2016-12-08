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

    DECLARE
    
    v_comp varchar2;
    v_teamACountry varchar2;
    v_teamBCountry varchar2;
    v_Goal_A integer;
    v_Goal_B integer;
    v_GoalTotal varchar2;
    
    BEGIN
    
    select TeamCountry into v_teamACountry from Teams where TeamID = v_teamAID;
    select TeamCountry into v_teamBCountry from Teams where TeamID = v_teamBID;
    select Goal_A into v_teamBCountry from MATCHES where TeamID = v_Goal_A;
    select Goal_B into v_teamBCountry from MATCHES where TeamID = v_Goal_B;

  v_GoalTotal := v_Goal_A + v_Goal_B;

  if v_GoalTotal >= 0 then
    raise GoalScored;
  End if;
  
  if v_comp = 'Europa League' then
    if not(v_teamACountry = 'England') and not(v_teamBCountry = 'Spain') then
      raise Invalid_Competition;
  end if;
      
  if v_comp = 'Premier League' then
    if not(v_teamACountry = 'England') and not(v_teamBCountry = 'Spain') then
      raise Invalid_Competition;
  end if;

  if v_comp = 'Liga League' then
    if not(v_teamACountry = 'Spain') and not(v_teamBCountry = 'England') then
      raise Invalid_Competition;
  end if;
  
  if v_comp = 'La Liga' then
    if not(v_teamACountry = 'Spain') and not(v_teamBCountry = 'England') then
      raise Invalid_Competition;
  end if;
  
  exception
   when Invalid_Competition then
    dbms_output.put_line('Invalid Competition');
    
  exception
    when GoalScored then
    dbms_output.put_line('Goals scored:' + GoalScored);
  
END;
