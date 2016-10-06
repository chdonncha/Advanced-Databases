### Exercise 1
---
(short question on DB modelling) A database contains a list of toys, all of them identified by a name, a price, a unique ID. However, toys are different and each toy could have specific attributes that only that toys has. For instance, the toy car has 2 attributes specific to the car only: engine_size, petrol_or_diesel. The toy teddy has two other specific attributes material and age (and, of course, teddy does not have the engine_size and petrol_or_diesel attributes, and the toy car does not have the material and age attributes) and so on… How would you store this information in a database? Explain and justify your solution. Consider all the potential aspects of the solution (easy to use and maintain, performance, storage efficiency, what if some new attributes are added?). You might also search the web for the problem.

all has: name, price and unique ID

Toy - car
engine_size
petrol_or_diesel

Toy - Teddy
Material
Age

How would you store this info in a db, justify your answer
touch on:

Easy to use
Maintain
Performance
Storage Efficiency
Should new attributes be added?

---
### Exercise 2
---
From ER diagram to relational model. You need to model the relationship between two entities E1 and E2. Suppose the key of E1 is the attribute K1 and the key of E2 is attribute K2.You can ignore the other entities attributes. Chose 3 of the following 6 situations and show how they can be modelled using a relational model (tables and keys) and how it can be implemented in oracle (using create table statements).

![1](1.jpg)

1. ![!1_2](1_2.jpg)

2. ![1_3](1_3.jpg)
3. ![1_4](1_4.jpg)

Consider the following relation: Is it possible to model it with a relational model and implement it with Oracle “create table” statements? Why?

![2](2.jpg)

---
### Exercise 3
---
Design a Relational model for a cinema DB. A company is managing more than 50 cinemas over the country. You are required to design their relational DB, showing tables with primary and foreign keys to model relationships among tables. For each cinema, it is important to store its location, contact number, name and number of screens. Each day in each screen there are many shows at different times. The DB has a list of all the movies (past and present) shown, with the title of the movie, duration and rating. The number of seats for each screen is recorded as well. The DB contains the booking system data as well. In order to submit a booking, each customer must be registered with a username, password, DOB. Users can book tickets for a specific show. A booking consists of a number of tickets for a specific show at a specific time, screen and cinema. Tickets have different prices depending if they are adult or child ticket. Seats numbers are assigned during the booking (the user can select them). Therefore, a booking is for instance, “3 adult tickets + 2 child tickets for movie X at time Y at cinema Z screen W, seats 3,4,56”. The total price of a booking is also recorded.  Note that a unique booking ID is generated for each booking since the same user can book twice for the same movie.

company has more than 50 cinemas over the country

show primary and foreign keys

each cinema: location, contact number, name, number of screens

Each screen has many different times

Movies shown, title, duration, rating

number of seats for each screen is recorded as well

each user must be registered to submit a booking

customer: username, password, DOB

they can book tickets for a specified show

booking: number of tickets, specific show, specific time, screen and cinema

tickets have different prices depending if they are an adult or child

seat numbers are assigned during booking

total price is also recorded

unique booking ID is generated for each booking
