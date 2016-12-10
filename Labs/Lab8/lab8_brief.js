MongoDB Lab 2

Submission: upload on webocurses your js script(s) to execute the 11 questions described below
 

Remember:
- when executing from a script, the output of a query is not automatically redirected to the screen
In order to print out the output, loop over querys output and call a function like:

function get_results (result) 
	{ print(tojson(result)); } 

db.col.find(…).forEach(get_results)

- to select a db from a script, you cannot use the command
use <dbname> 
as in the mongo shell, but you need to use:
db = db.getSibling('<dbname>')
Put it as the first instruction of the js script to be sure you are working with the correct DB 

Remember that the comamnd use <dbname> creates a db if dbname does not exist. Work using a database named with your studentid (all small letters)

- the mongodb operator "out" is used to save the output of an aggregate query or a mapreduce function
to a collection. Reference here: http://docs.mongodb.org/manual/reference/operator/aggregation/out/

- in order to access a json embedded in another json, use the "." notation.
For istance:

{ _id: 1, item: "abc123", quantity: 10, metrics: { orders: 2, ratings: 3.5 } }

the orders field is "metrics.orders"

If the embedded object is an array, as in this example:

{
     cust_id: "c3",
     ord_date: new Date("Nov 04, 2009"),
     status: 'D',
     items: [ { item_id: "iphone", qty: 15, price: 900 },
              { item_id: "lenovo laptop", qty: 1, price: 600 } ]
}

acces each element by index. For instance the price of the second item is:
"items(1).price"
See: http://docs.mongodb.org/manual/tutorial/query-documents/

CURSORS
=======
You can assign the output of a query to a cursor.
From a script:

var myCursor = db.inventory.find( { type: 'food' } );

and then you can loop like this:

while (myCursor.hasNext()) { 	print(tojson(myCursor.next())); }

or 

myCursor.forEach(printjson);

You can convert the cursor into an array:

var documentArray = myCursor.toArray(); 
var myDocument = documentArray[3];

or use the cursor directly:

var myDocument = myCursor[3];

Example: to print out all the results of a query:

cursor = db.collection.find();
while ( cursor.hasNext() ) {
   printjson( cursor.next() );
}

Using forEach you can define a function that is applied to each element in the cursor.
Example:

db.users.find().forEach( function(myDoc) { print( "user: " + myDoc.name ); } );

Documentation:
https://docs.mongodb.org/v3.0/reference/method/cursor.forEach/
https://docs.mongodb.org/manual/tutorial/iterate-a-cursor/

#########################################
Instructions for the labs:

1. create a collections called your_student_id_teams and insert the documents about teams and football players contained in this file
2. insert two new players
   - add a player to the Man. Utd. team. Player id:  Keane, 44 yers old, 326 caps, 33 goals.
   - add a player to the AC Milan team. Player id:  Kaka, 32 yers old, 112 caps, 53 goals.
3. Find the oldest team
4. update the number of goal of all the Real Madrid Players by 3 goals each
5. using a cursor, update the number of caps of all the "Serie A" teams by incrementing them by 10% (round it!)
6. update the points of Arsenal to be equal to the point of Barcelona
7. Find all the players over 30 years old containing the string "es"
8. Using aggregate mongoDB operator, list the total point by league.
9. Using aggregation, list all the teams by number of goals in descending order.
10. Compute the average number of goal per match per player and store the output in a collection 
named student_id_avg_goals.     
10. Write a js function old_vs_young(x) , that receives a positive integer x representing the age of a player
and returns 1 if the total number of goals scored by the players with age >= x years is greater than the 
total number of goals scored by the players with age < x, otherwise it returns 0.
The function also prints the number of goals for each group of players  

Useful links:
Aggregation examples: http://docs.mongodb.org/manual/tutorial/aggregation-zip-code-data-set/
Mapreduce examples: http://docs.mongodb.org/manual/tutorial/map-reduce-examples/

##############################################

	 