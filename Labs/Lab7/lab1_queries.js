// q 1. Find all the students that failed

db.d14123580_schema_query1.insert(
    db.d14123580_schema.find({
        'Courses': {
            $elemMatch: {
                'Mark': {
                    $lt: 40
                }
            }
        }
    }).toArray()
);

// q 2. Find the number of people that passed each exam 

db.d14123580_schema_query2.insert(
	db.d14123580_schema.aggregate(
		{$unwind : '$Courses'},
		{$match : {'Courses.Mark' : {$gte: 40}}},
		{$group : {_id : "$Courses.Course_ID", Count : {$sum : 1}}}
	).toArray()
);

// q 3. Find the student with the highest average mark 

db.d14123580_schema_query3.insert(
	db.d14123580_schema.aggregate(
		{$unwind : '$Courses'},
		{$group : {_id : "$Student_ID", 
			Name: {$first : '$Name'}, 
			Surname : {$first : '$Surname'},  
			avgAmount: { $avg : '$Courses.Mark' }}},
		{$sort : {'avgAmount' : -1}},
		{$limit : 1}
	).toArray()
);