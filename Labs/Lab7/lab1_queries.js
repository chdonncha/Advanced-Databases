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
		{$project : {Course_ID : 1, 'Courses.Mark': 1, 'Courses.Course_ID' : 1}},
		{$match : {'Courses.Mark' : {$gt: 40}}},
		{$group : {_id : "$Courses.Course_ID", Count : {$sum : 1}}}
	).toArray()
);