
// q 2. insert two new players

db.teams.update(
    {team_id: 'eng1'},
    {$push: {'players': 
        {
        p_id: 'Keane',
        goal: 33,
        caps: 326,
        age: 44
        }
    }}
);

db.teams.update(
    {team_id: 'ita3'},
    {$push: {'players': 
        {
        p_id: 'Kaka',
        goal: 53,
        caps: 112,
        age: 32
        }
    }}
);

// q 3. Find the oldest team

db.teams.find().sort({
    'date_founded': 1
}).limit(1).pretty();


// q 4. Update the number of goal of all the Real Madrid Players by 3 goals each

db.teams.find(
    {team_id : 'spa2'}
).forEach(function (doc) {
    doc.players.forEach(function (players) {
        players.goal += 3;
});
    db.teams.save(doc);
});

// q 5. using a cursor, update the number of caps of all the "Serie A" teams by incrementing them by 10% (round it!)

var cursor = db.teams.find ( { league : 'Serie A' });

cursor.forEach(function (cursor) {
    cursor.players.forEach(function (players) {
        var addPercent = Math.ceil(players.caps * 0.10);
        players.caps += addPercent;
});
    db.teams.save(cursor);
});

// q 6. update the points of Arsenal to be equal to the point of Barcelona

var findPoints = db.teams.findOne({ name: 'Barcelona' }).points;
print(toPoint);
db.teams.update(
    {name : "Arsenal" },
    {$set : {points : findPoints}});

// q 7. Find all the players over 30 years old containing the string "es"

db.teams.aggregate(
	{$unwind: '$players'}, 
    {$match: {'players.age': {$gt: 30}}}, 
    {$match: {'players.p_id': {$regex: '.*es.*'}}}, 
    {$group: {_id: '$players.p_id', age: {$first: '$players.age'}}}
);

// q 8. Using aggregate mongoDB operator, list the total point by league. **NEEDS WORK**

db.teams.aggregate(
    {$group: {_id: '$league', total : {$sum : '$points'}}}
);

// q 9. Using aggregation, list all the teams by number of goals in descending order.

db.teams.aggregate(
    {$unwind : '$players'},
	{$group : {_id : '$name', 
        total : {$sum : '$players.goal'}}},
	{$sort : {'total' : -1}}
)

// q 10. Compute the average number of goal per match per player and store the output in a collection
// named student_id_avg_goals.

db.d14123580_avg_goals.insert(
    db.teams.aggregate(
    	{$unwind : '$players'},
    	{$project : {_id : "$players.p_id", 
            Goals : '$players.goal',
    		Matches : '$players.caps',
    		avgAmount: { $divide : [ '$players.goal', '$players.caps' ]}}},
    	{$sort : {'avgAmount' : -1}}
    ).toArray()
);

// q 11. Write a js function old_vs_young(x) , that receives a positive integer x representing the age of a player
// 
//
// and returns 1 if the total number of goals scored by the players with age >= x years is greater than the 
// total number of goals scored by the players with age < x, otherwise it returns 0.
// The function also prints the number of goals for each group of players  

function old_vs_young(x){

     db.teams.aggregate(
    {$unwind: '$players'}, 
    {$match: {'players.age': {$gte: x}}},
    {$group: {_id: '$players.p_id', totalGoals { $gte : x}}}
    );

}

old_vs_young(30);