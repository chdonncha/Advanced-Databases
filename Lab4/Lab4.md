<b>1. Check that data are in the three tables. Have a look at the data There are no indexes or keys defined at this stage.

---

<b>2. Execute the following query Query1</b>
<b>select * from persons And select the explain plain function.</b>
<b>And explain the plain function</b>

<b>How much is the cost?:</b> <u>68</u>
<b>Was it a full or index scan of the table?:</b> <u>Full Scan</u>
<b>Why?:</b> <u>There's no primary keys set in the tables</u>

---

<b>3. Execute Query2 . select * from persons where person_id>1000 and person_id<3000

<b>Total cost:</b> <u>68</u>
<b>Full or index scan?:</b> <u>Index Scan</u>
<b>Why?:</b>
<b>Any difference with the previous query?<b>:

---

<b>4. Define a primary key over person_id (using an ALTER TABLE … ADD CONSTRAINTS statement) Remember that this creates an index on person_id as well. Perform Query1

<b>Cost?:</b>

<b>Full or Index?:</b>

<b>Comment the results:</b>

<b>Perform Query2:</b>

<b>Cost?:</b>

<b>Full or Index?:</b>

<b>Comment the results:<b/>

<b>Query1 requires a full scan since it gives back the full unfiltered table Query2 requires uses the index scan on the primary index person_id to filter the data. Note that range scan refers to accessing an interval of value (range) using an index (therefore oracle finds the starting point using the index and then the scan is sequential over an ordered list. It is therefore faster than full scan)</b>
