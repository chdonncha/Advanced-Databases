### Exercise 1
---
<b><u>(short question on DB modelling) A database contains a list of toys, all of them identified by a name, a price, a unique ID. However, toys are different and each toy could have specific attributes that only that toys has. For instance, the toy car has 2 attributes specific to the car only: engine_size, petrol_or_diesel. The toy teddy has two other specific attributes material and age (and, of course, teddy does not have the engine_size and petrol_or_diesel attributes, and the toy car does not have the material and age attributes) and so on… How would you store this information in a database? Explain and justify your solution. Consider all the potential aspects of the solution (easy to use and maintain, performance, storage efficiency, what if some new attributes are added?). You might also search the web for the problem.

This example below is a good solution as it allows there to be multiple Toy- Descriptions made off the one Toy. This allows for multilpe descriptions of the one Toy rather than creating an entirely differnt entity for each toy. The data from say a RaceCar's engine size can be entered into the description, and then another description table being created to say whether it uses petrol or diseal.

It is is memory efficent as it's reuseing the same entity.

Same priniple applies for access time.

![exercise1](images/exercise1.jpg)

---
### Exercise 2
---
<b><u>From ER diagram to relational model. You need to model the relationship between two entities E1 and E2. Suppose the key of E1 is the attribute K1 and the key of E2 is attribute K2.You can ignore the other entities attributes. Chose 3 of the following 6 situations and show how they can be modelled using a relational model (tables and keys) and how it can be implemented in oracle (using create table statements).

![1](images/1.jpg)

1. ![!1_2](images/1_2.jpg)

Diagram represented as ERD

![Exercise2_1](images/exercise2_1.jpg)

And can be represented in the following code

```sql

CREATE TABLE E1
(
	K1                   CHAR(18) NOT NULL ,
 PRIMARY KEY (K1)
);

CREATE TABLE E2
(
	K2                   CHAR(18) NOT NULL ,
	K1                   CHAR(18) NOT NULL ,
 PRIMARY KEY (K2),
FOREIGN KEY (K1) REFERENCES E1 (K1)
);
```

2. ![1_3](images/1_3.jpg)

Diagram represented as ERD

![Exercise2_2](images/Exercise2_2.jpg)

And can be represented in the following code

```sql
CREATE TABLE E1
(
	K1                   CHAR(18) NOT NULL ,
 PRIMARY KEY (K1)
);

CREATE TABLE E2
(
	K2                   CHAR(18) NOT NULL ,
	K1                   CHAR(18) NULL ,
 PRIMARY KEY (K2),
FOREIGN KEY (K1) REFERENCES E1 (K1) ON DELETE SET NULL
);
```

3. ![1_4](images/1_4.jpg)

Diagram represented as ERD

![Exercise2_3](images/exercise2_3.jpg)

And can be represented in the following code

```sql
CREATE TABLE E1
(
	K1                   CHAR(18) NOT NULL ,
 PRIMARY KEY (K1)
);

CREATE TABLE E2
(
	K2                   CHAR(18) NOT NULL ,
	K1                   CHAR(18) NOT NULL ,
 PRIMARY KEY (K2,K1),
FOREIGN KEY (K1) REFERENCES E1 (K1),
FOREIGN KEY (K1) REFERENCES E1 (K1) ON DELETE SET NULL
);
```

<u>Consider the following relation: Is it possible to model it with a relational model and implement it with Oracle “create table” statements? Why?

![2](images/2.jpg)

It is not possible


---
### Exercise 3
---
<b><u>Design a Relational model for a cinema DB. A company is managing more than 50 cinemas over the country. You are required to design their relational DB, showing tables with primary and foreign keys to model relationships among tables. For each cinema, it is important to store its location, contact number, name and number of screens. Each day in each screen there are many shows at different times. The DB has a list of all the movies (past and present) shown, with the title of the movie, duration and rating. The number of seats for each screen is recorded as well. The DB contains the booking system data as well. In order to submit a booking, each customer must be registered with a username, password, DOB. Users can book tickets for a specific show. A booking consists of a number of tickets for a specific show at a specific time, screen and cinema. Tickets have different prices depending if they are adult or child ticket. Seats numbers are assigned during the booking (the user can select them). Therefore, a booking is for instance, “3 adult tickets + 2 child tickets for movie X at time Y at cinema Z screen W, seats 3,4,56”. The total price of a booking is also recorded.  Note that a unique booking ID is generated for each booking since the same user can book twice for the same movie.

![Exercise3](images/6.jpg)
