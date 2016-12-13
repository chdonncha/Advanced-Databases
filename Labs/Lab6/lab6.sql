/* Golf DB 1 and DB 2*/
drop table results1;
drop table results2;
drop table players1;
drop table players2;
drop table team1;
drop table team2;
drop table tournament1;
drop table tournament2;

drop table Player_Dim;
drop table Team_Dim;
drop table Tournament_Dim;
drop table Date_Dim;
drop table FACT_Results;

drop sequence p_stage_seq;
drop sequence t_stage_seq;
drop sequence d_stage_seq;
drop sequence tour_stage_seq;


Create Table Team1(
  Team_id integer primary key,
  Team_name varchar(100)
);

Create Table Team2(
Team_id integer primary key,
Team_name varchar(100)
);

Create Table Players1(
  p_id integer primary key,
  p_name varchar(50),
  p_sname varchar(50),
  team_id integer,
  constraint fk_team_1 foreign key (team_id) references team1
);

Create Table Players2(
  p_id integer primary key,
  p_name varchar(50),
  p_sname varchar(50),
  team_id integer,
  constraint fk_team_2 foreign key (team_id) references team2
);

Create Table Tournament1(
  T_id integer primary key,
  t_descriprion varchar(100),
  t_date date,
  Total_price float
);

Create Table Tournament2(
  T_id integer primary key,
  t_descriprion varchar(100),
  t_date date,
  Total_price float
);

Create Table Results1(
  t_id integer,
  p_id integer,
  rank integer,
  price float,
  CONSTRAINT  FK_player1 FOREIGN KEY (p_id) REFERENCES players1,
  CONSTRAINT  FK_tournament1 FOREIGN KEY (t_id) REFERENCES tournament1,
  CONSTRAINT PK_Results1 PRIMARY KEY (t_id,p_id)
);

Create Table Results2(
  t_id integer,
  p_id integer,
  rank integer,
  price float,
  CONSTRAINT  FK_player2 FOREIGN KEY (p_id) REFERENCES players2,
  CONSTRAINT  FK_tournament2 FOREIGN KEY (t_id) REFERENCES tournament2,
  CONSTRAINT PK_Results2 PRIMARY KEY (t_id,p_id)
);

/* END ER DIAGRAM */


/* data */
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (1, 'USA');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (2, 'AUSTRALIA');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (3, 'UK');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (4, 'IRELAND');

INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (1, 'UK');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (2, 'IRELAND');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (3, 'USA');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (4, 'ITALY');



INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (1, 'Tiger', 'Woods', 1);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (2, 'Mary', 'Smith', 2);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (3, 'Mark', 'Deegan', 2);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (4, 'James', 'Bryan', 3);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (5, 'John', 'McDonald', 1);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (6, 'Mario', 'Baggio', 1);

INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (2, 'Tiger', 'Woods', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (1, 'John', 'McDonald', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (3, 'Jim', 'Burke', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (4, 'Paul', 'Bin', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (5, 'Peter', 'Flynn', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (6, 'Martha', 'Ross', 4);


INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (1, 'US open', 1700000,'01-jan-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (2, 'British Open', 7000000,'01-apr-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (3, 'Italian Open', 2000000,'11-mar-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (4, 'Irish Open', 300000,'21-jul-2014');

INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (1, 'Dutch open', 1700000,'22-nov-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (2, 'French Open', 7000000,'17-dec-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (3, 'Spanish Open', 2000000,'03-mar-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (4, 'Chiinese Open', 300000,'15-jul-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (5, 'Dubai Open', 600000,'10-aug-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (6, 'US Master', 1000000,'10-jul-2014');


INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (1, 1, 1, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (1, 2, 2, 20000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (2, 2, 4, 1000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (3, 2, 3, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (3, 1, 2, 1100);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 6, 3, 6000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 2, 2, 9000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 1, 1, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (3, 5, 2, 9500);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 5, 4, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (2, 5, 7, 100);

INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (1, 1, 1, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (1, 2, 3, 2000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (2, 2, 1, 6000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (3, 2, 3, 17000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (3, 1, 12, 1100);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 6, 10, 8000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 2, 2, 12000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 1, 3, 10000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (3, 5, 1, 9000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 5, 5, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (2, 5, 3, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (5, 5, 3, 8000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (5, 2, 2, 16000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (5, 1, 1, 20000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (6, 1, 3, 2000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (6, 5, 2, 9400);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (6, 4, 1, 12000);


/* DIMENSIONAL MODEL */

Create Table Player_Dim(
  p_sk integer primary key,
  player_name varchar(50)
);

Create Table Team_Dim(
  t_sk integer primary key,
  team_name varchar(100)
);

Create Table Tournament_Dim(
  tour_sk integer primary key,
  tournament_desc varchar(100),
  total_price float
);
  
Create Table Date_Dim(
  d_sk integer primary key,
  day integer,
  month integer,
  year integer,
  week integer,
  quater integer,
  dayofweek integer
);

Create Table FACT_Results(
  p_sk integer,
  tour_sk integer,
  t_sk integer,
  d_sk integer,
  rank integer,
  price float,
  CONSTRAINT FK_playerdim FOREIGN KEY (player_sk) REFERENCES Player_Dim,
  CONSTRAINT FK_teamdim FOREIGN KEY (t_sk) REFERENCES Team_Dim,
  CONSTRAINT FK_tournamentdim FOREIGN KEY (tour_sk) REFERENCES Tournament_Dim,
  CONSTRAINT FK_datedim FOREIGN KEY (d_sk) REFERENCES Date_Dim,
  CONSTRAINT PK_factresults PRIMARY KEY (player_sk, tour_sk, t_sk, d_sk)
);

/* INITIAL ETL */
/* Load Dimension Customers */
/* Staging Area */

/* Player Stage */

create table Player_Stage(
  p_sk integer,
  sourceDB integer,
  p_id integer,
  player_name varchar(50)
);

create sequence p_stage_seq 
start with 1 
increment by 1 
nomaxvalue; 

drop trigger p_stage_trigger;

create trigger p_stage_trigger
before insert on Player_Stage
for each row
begin
select p_stage_seq.nextval into :new.p_sk from dual;
end;

/* Team Stage */

create table Team_Stage(
  t_sk integer,
  sourceDB integer,
  t_id integer,
  team_name varchar(100)
);

create sequence t_stage_seq 
start with 1 
increment by 1 
nomaxvalue; 

drop trigger t_stage_trigger;

create trigger t_stage_trigger
before insert on Team_Stage
for each row
begin
select t_stage_seq.nextval into :new.t_sk from dual;
end;

/* Tournament Stage */

create table Tournament_Stage(
  tour_sk integer,
  sourceDB integer,
  t_id integer,
  tournament_desc varchar(100),
  total_price float
);

create sequence tour_stage_seq 
start with 1 
increment by 1 
nomaxvalue; 

drop trigger tour_stage_trigger;

create trigger tour_stage_trigger
before insert on Tournament_Stage
for each row
begin
select tour_stage_seq.nextval into :new.tour_sk from dual;
end;

/* Date Stage */

create table Date_Stage(
  d_sk integer,
  sourceDB integer,
  d_id integer,
  day integer,
  month integer,
  year integer,
  week integer,
  quater integer,
  dayofweek integer
);

create sequence d_stage_seq 
start with 1 
increment by 1 
nomaxvalue; 

drop trigger d_stage_trigger;

create trigger d_stage_trigger
before insert on Date_Stage
for each row
begin
select d_stage_seq.nextval into :new.d_sk from dual;
end;

/* Loading Fact Stage */

Create table fact_stage(
  p_sk integer,
  tour_sk integer,
  t_sk integer,
  d_sk integer,
  p_id integer,
  Team_id integer,
  T_id integer,
  rank integer,
  price float,
  sourcedb integer
);

/* Assign Surrogate Keys */
/* Player SK */

update fact_stage
set p_sk=
  (select Player_Stage.p_sk from
  Player_Stage  where (Player_Stage.sourceDB=fact_stage.sourceDB and
  Player_Stage.p_id = fact_stage.p_id));

select * from fact_stage;

/* Team SK */

update fact_stage
set t_sk=
  (select Team_Stage.t_sk from
  Team_Stage  where (Team_Stage.sourceDB=fact_stage.sourceDB and
  Team_Stage.Team_id = fact_stage.Team_id));

select * from fact_stage;

/* Tournament SK */

update fact_stage
set tour_sk=
  (select Tournament_Stage.p_sk from
  Tournament_Stage  where (Tournament_Stage.sourceDB=fact_stage.sourceDB and
  Tournament_Stage.T_id = fact_stage.T_id));

select * from fact_stage;

/* Date SK */

update fact_stage
set d_sk=
  (select Date_Stage.d_sk from
  Date_Stage  where (Date_Stage.sourceDB=fact_stage.sourceDB and
  Date_Stage.T_id = fact_stage.T_id));

select * from fact_stage;


/* END INITIAL ETL LOAD */

/* Second ETL LOAD */
/* new data in database 1 */
/* 2 new players */
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (7, 'Alan', 'Parker', 1); 
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (8, 'Martha', 'Bag', 2); 
/* 1 new tournamenet */
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE) VALUES (5, 'Saudi Open', 500000); 
 
 /* 3 new results */
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (5, 1, 1, 60000); 
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (5, 7, 5, 20000);  
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (2, 8, 3, 1000); 

/* SECOND ETL */
/* recognize existing entities and update them */
/* add new entities */
/* first use stage table, then load dimensions */
/* insert only new entities. Use the p_id + sourceDB to check if entity already existed */

/* Dimension Player */
insert into Player_Stage (sourcedb,c_id,c_name,gender) 
select 1,c_id,c_name,cast(gender as varchar(10)) from customer1 c1 where
NOT EXISTS (SELECT * FROM customer_stage cs
              WHERE  cs.c_id= c1.c_id and cs.sourcedb=1 );  
              /* updating from database 1, add only NEW customers, use the business key! */

insert into dimcustomer select c_sk,c_name,gender from customer_stage cs where
NOT EXISTS (SELECT * FROM dimcustomer
              WHERE  cs.c_sk= dimcustomer.c_sk );  /* updating only new entities */