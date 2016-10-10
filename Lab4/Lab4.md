1. Check that data are in the three tables. Have a look at the data There are no indexes or keys defined at this stage.

2. Execute the following query Query1.  select * from persons And select the explain plain function.

How much is the cost? <u> 68

Was it a full or index scan of the table? <u>Full Scan

Why? <u>There's no primary keys set in the tables

3. Execute Query2 . select * from persons where person_id>1000 and person_id<3000

Total cost? <u> 68
Full or index scan? <u>Index Scan
Why?
Any difference with the previous query?

Define a primary key over person_id (using an ALTER TABLE … ADD CONSTRAINTS statement) Remember that this creates an index on person_id as well. Perform Query1

Cost?

Full or Index?

Comment the results.

Perform Query2

Cost?

Full or Index?

Comment the results.

Query1 requires a full scan since it gives back the full unfiltered table Query2 requires uses the index scan on the primary index person_id to filter the data. Note that range scan refers to accessing an interval of value (range) using an index (therefore oracle finds the starting point using the index and then the scan is sequential over an ordered list. It is therefore faster than full scan)
