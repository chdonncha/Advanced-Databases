
// q 2. insert two new players **NOT WORKING**

db.teams.update(
    {
        team_id: 'eng1'
    },
    {
        $push: {
            'players': {
                p_id: 'Keane',
                goal: 33,
                caps: 326,
                age: 44
            }
        }
    }
);

db.teams.update(
    {
        team_id: 'ita3'
    },
    {
        $push: {
            'players': {
                p_id: 'Kaka',
                goal: 53,
                caps: 112,
                age: 32
            }
        }
    }
);


// q 3. Find the oldest team

db.teams.find().sort({
    'date_founded': 1
}).limit(1);


// q 4. Update the number of goal of all the Real Madrid Players by 3 goals each

// q 5. using a cursor, update the number of caps of all the "Serie A" teams by incrementing them by 10% (round it!)

// q 7. Find all the players over 30 years old containing the string "es"

db.teams.aggregate(
	{$unwind: '$players'}, 
    {$match: {'players.age': {$gt: 30}}}, 
    {$match: {'players.p_id': {$regex: '.*es.*'}}}, 
    {$group: {_id: '$players.p_id', age: {$first: '$players.age'}}}
);

// q 8. Using aggregate mongoDB operator, list the total point by league.

// q 9. Using aggregation, list all the teams by number of goals in descending order.

// q 10. Compute the average number of goal per match per player and store the output in a collection 
// named student_id_avg_goals.  

// q 10. Write a js function old_vs_young(x) , that receives a positive integer x representing the age of a player
// and returns 1 if the total number of goals scored by the players with age >= x years is greater than the 
// total number of goals scored by the players with age < x, otherwise it returns 0.
// The function also prints the number of goals for each group of players  