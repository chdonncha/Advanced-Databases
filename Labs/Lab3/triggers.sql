create or replace trigger league_country
  before insert
  on Matches
  for each row
  declare
    varchar2 v_comp := :old.Competition;
    if not(:new.Competition := null) then
      v_comp := :new.Competition;

    varchar2 v_teamAID := :old.TeamA_ID;
    if not(:new.TeamA_ID := null) then
      v_teamAID := :new.TeamA_ID;

    varchar2 v_teamBID := :old.TeamB_ID;
    if not(:new.TeamB_ID := null) then
      v_teamBID := :new.TeamB_ID;

    varchar2 v_teamACountry;

    varchar2 v_teamBCountry;

  begin
    select TeamCountry into v_teamACountry from Teams where TeamID = V_teamAID;
    select TeamCountry into v_teamBCountry from Teams where TeamID = v_teamBID;

  if v_comp := 'Premier League' then
    if not(v_teamACountry := 'England') and not(v_teamBCountry := 'England') then
      raise Invalid_Country_League;

  if v_comp := 'Liga League' then
    if not(v_teamACountry := 'Spain') and not(v_teamBCountry := 'Spain') then
      raise Invalid_Country_League;

  exception
    when Invalid_Country_League then
      dbms_output.put.line('Competition: ' + :new.Competition + 'Is invalid to one/more of inputted sports teams: ' + :new.TeamA_ID ", " + :new.TeamB_ID);
      
