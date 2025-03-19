#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $YEAR != year ]]
  then
    #Check if winner already in database
    GET_WINNER_TEAM=$($PSQL "SELECT * FROM teams WHERE name='$WINNER'")
    # Insert Team
    if [[ -z $GET_WINNER_TEAM ]] 
      then
      # Insert Team
      INSERT_WINNER_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi
    #Check if winner already in database
    GET_OPPONENT_TEAM=$($PSQL "SELECT * FROM teams WHERE name='$OPPONENT'")
    #INSERT TEAM
    if [[ -z $GET_OPPONENT_TEAM ]] 
      then
      # Insert Team
      INSERT_OPPONENT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi

    # GET WINNER ID
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    # GET OPPONENT ID
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    #Insert game
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES('$YEAR', '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_ID, $OPPONENT_ID)") 
fi
done