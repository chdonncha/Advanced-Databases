---
### Exercise 2
---


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

It is not possible.

As a One-to-one relatinship associates with one record in one table with only a single record in the other table and a many to one relationship associates one record in on table with many records in the other table. It means it just isn't possible the records cannot be implemented as it is against both of their rules to be compatible with one another.
