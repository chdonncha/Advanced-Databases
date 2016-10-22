<b>1. Check that data are in the three tables. Have a look at the data There are no indexes or keys defined at this stage.

---

<b>2. Execute Query 1</b>

How much is the cost?: <u>68</u>
Was it a full or index scan of the table?: <u>Full Scan</u>
Why?: <u>You are selecting everything from the table rather than selecting from an index</u>

---

<b>3. Execute Query 2

Total cost: <u>68</u>
Full or index scan?: <u>Full Scan</u>
Why?: <u>There's no index attached to person_id, i.e. a primary key or an index</u>
Any difference with the previous query?: <u>There is no difference in the cost, because there is still no index or the structure hasn't changed of the table, but the only difference is that it's filtering the results.

---

<b>4. Execute Query1

Cost?: <u>27</u>

Full or Index?:<u>Full Scan</u>

Comment the results:<u>The scan cost did not change because creating the index on person_id in the form of a primary key, it does not change the fact that Query 1 scans the entire table rather than a specific index.</u>

<b>Query2:

Cost?: <u>23</u>

Full or Index?:<u>Index</u>

Comment the results: <u>Because the query references persons_id which is a primary key, thus having an index it can reduce the cost</u>

---

<b>5. Perform the following

<b><u>Query 3

Cost: <u>11</u>
Type of Scan: <u>Index</u>

<b><u>Query 4

Cost: <u>27</u>
Type of Scan:<u>Full</u>

Comment the behaviour of Query3 and Query4: <u>multiplication on the Id turns it into a full scan, otherwise it will be an index scan</u>

---

<b>6. Execute Query 5

Cost: <u>29</u>
Full or Index: <u>Full scan</u>
Comment the results: <u>The query is being filtered by group person_age which does not have a index associated with it.</u>

---

<b>7. Execute Query 5

Cost: <u>11</u>
Full or Index: <u>Index</u>

Cost: <u>29</u>
Full or Index: <u>Index</u>

---

<b>8. Joining two tables

Cost: <u>241</u>
Full or Index: <u>Index</u>
Comment the results: <u>It's an index scan because the query is filtered through an index</u>

<b>Adding indexs</b>
Cost:<u>174</u>
Comment: <u>The cost is further reduced because ID's are very useful to have indexs on, so that they do not have to
interate through the entire table</u>

<b>9. Reduce the cost of the query as much as you can</b>

<u>To reduce the cost first we place indexs on the ID's, in the form of primary keys:</u>

```sql
ALTER TABLE jobs
ADD CONSTRAINT jobs_pk PRIMARY KEY (jobs_id);

ALTER TABLE persons
ADD CONSTRAINT persons_pk PRIMARY KEY (persons_id);
```

<u>Next we should include the indexs of the dates</u>

```sql
create index jobs_person_startdate on jobs_person(start_date);
create index jobs_person_enddate on jobs_person(end_date);
```
