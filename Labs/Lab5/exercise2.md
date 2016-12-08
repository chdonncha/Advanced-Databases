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
select p.user_name, p.commenttext, p.tags, p.feeling
from post_facts p
inner join user_dimension u
on p.user_name = u.user_name
where p.user_name = 'Donncha Cassidy-Hand'
and p.feeling = 'Happy';
```
<b>Query 2</b>
```sql
select p.user_name, p.commenttext, p.tags, p.feeling
from post_facts p
inner join date_dimension d
on p.dateid = u.date_dimension
where u.date_dimension = 'November';
```
