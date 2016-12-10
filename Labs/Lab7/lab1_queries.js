db.lab1_query1.insert(
    db.lab1.find({
        'Courses': {
            $elemMatch: {
                'Mark': {
                    $lt: 40
                }
            }
        }
    }).toArray()
);

db.lab1_query2.insert(
	db.lab1.aggregate(
		{$unwind : '$Courses'},
		{$match : {'Courses.Mark' : {$gte: 40}}},
		{$group : {_id : "$Courses.Course_ID", Count : {$sum : 1}}}
	).toArray()
);

db.lab1_query3.insert(
	db.lab1.aggregate(
		{$unwind : '$Courses'},
		{$group : {_id : "$Student_ID", 
			Name: {$first : '$Name'}, 
			Surname : {$first : '$Surname'},  
			avgAmount: { $avg : '$Courses.Mark' }}},
		{$sort : {'avgAmount' : -1}},
		{$limit : 1}
	).toArray()
);