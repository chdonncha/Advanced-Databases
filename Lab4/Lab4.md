<b>1. Check that data are in the three tables. Have a look at the data There are no indexes or keys defined at this stage.

---

<b>2. Execute the following query Query1</b>

How much is the cost?: <u>68</u>
Was it a full or index scan of the table?: <u>Full Scan</u>
Why?: <u>There's no primary keys set in the tables</u>

---

<b>3. Execute Query2

Total cost: <u>68</u>
Full or index scan?: <u>Index Scan</u>
Why?:
Any difference with the previous query?

---

<b>4. Define a primary key over person_id (using an ALTER TABLE … ADD CONSTRAINTS statement) Remember that this creates an index on person_id as well. Perform Query1

Cost?:

Full or Index?:

Comment the results:

Perform Query2:

Cost?:

Full or Index?:

Comment the results:

---

<b>5. Perform the following

<b><u>Query 3

Cost:
Type of Scan:

<b><u>Query 4

Cost:
Type of Scan:

Comment the behaviour of Query3 and Query4:

<b>6. Execute
<b><u>Query

Cost:
Full or Index:
Comment the results:


<b>7. Execute

Query 5

Cost:
Full or Index:

Cost:
Full or Index:

<b>8. Joining two tables

Cost:
Full or Index:
Comment the results:
