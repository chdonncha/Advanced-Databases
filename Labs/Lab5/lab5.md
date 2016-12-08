## Exercise 1

The data was denormalised so it could be applied to a star schema. The Bank table was eliminated as the bank name could be also stored under the branch dimension.

As the transaction is assumed to be the facts, I felt it nessessary to move the AccountType in with the Transaction type for convinence.

The grain levels of the database have been reduced but still are required to cut through a fair amount of data. To reduce grain I could partition the datbase but as mentioned below I chose a balanced hierarchy apporach.

As for the date dimension, there were two options I could take, partitioning the tables into a day, year, month, quater and year table to allow faster access of data or going with a balanced hierarchy approach. I settled with the balanced hierarachy approach in the end, as it is ideal for storing any date related values. With it all being arranged into in a way which means the further you go into the date table the logical child to the entity is further down the table, with the logical parent being above it. But keeping the full date as a timestamp in the Transaction_Facts table as well.

![1](images/8.jpg)

sql select:
```sql
select sum(t.Amount) as "Total Amount: "
from Transaction_Facts t
inner join date_dimension d
on t.DateID = d.DateID
where t.Trans_Type = 'Student'
and d.year = '2009';
```

## Exercise 2

This schema is an example of what posting a status on your profile on <b>Facebook</b> might look like.

This Schema is to offer faster querying of data. Taking a similar approach to the previous schema, the heirarchy approach was chosen for stroring date related entities. All other data has been appropriately parititioned to support faster querying as well.

The grain levels are very low on this schema with the tables being very small in size avoiding the need to cut through vast amounts of data and speeding up queries, considering on social media there's vast amounts of data stored this is vitial.

As a checkin is a queried from a list of checkin locations in their database they will have to be unqiue with there not being allowed two different checkins in the same location as the amount of checkins in each location is counted else where.

For storing feeling in the post_facts this is because the feelings are provided through a predefined list of feelings the user can select when they choose a status and do not need unique id's as the selections are based on the website.

The media_dimension stores the references to the photo or video file selected, which them being allowed both be null if the user doesn't select any but only one can be selected if the user wishes to post a type of media on their status.

![2](images/14.jpg)

<b>Query 1</b>
```sql
select p.userID, p.commenttext, p.tags, p.feeling
from post_facts p
inner join user_dimension u
on p.userID = u.userID
where p.user_name = 'Donncha Cassidy-Hand'
and p.feeling = 'Happy';
```
<b>Query 2</b>
```sql
select p.user_name, p.commenttext, p.tags, p.feeling
from post_facts p
inner join date_dimension d
on p.dateid = u.dateid
where u.month = 'November';
```
