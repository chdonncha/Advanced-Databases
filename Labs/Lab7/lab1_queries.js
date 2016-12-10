db.lab1.find(
	{ 'courses' : 
	{$elemMatch :
		{'Mark' : 
		{'$gt' : '50' 
	}
}}}
);