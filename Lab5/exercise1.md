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
