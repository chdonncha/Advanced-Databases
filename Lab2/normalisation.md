## Exercise 1

UNF
---

Code
Artist
Painting code and Title
Purchase Date
Sales

1NF
---

Code|Artist   |Painting code and Title   | Purchase Date
--|---|---|--
03 -  |Carol Channing   |P1  |09/17/2000
  |   | P9  |  02/13/2002
15 -  |Dennis Frings  |P2   | 5/11/2000
  |   | P2  | 07/16/2003

2NF
---

**Customer**
(<u>customer_id</u>, name, phone, address1, address2, zipcode)

**Purchases**
(<u>purchases_id</u>, <u>painting_code</u>, <u>purchases_code</u>, painting_title, artist, purchase_date, sales_price)


3NF
----

**Customer**
(<u>customer_id</u>, name, phone, address1, address2, zipcode)

**Artist**
(<u>artist_code</u>, name)

**Painting**
(<u>painting_code</u>, title)

**Purchases**
(<u>purchases_id</u>, <u>artist_code</u>, <u>painting_code</u>, sales_price purchase_date, customer_id)

## Exercise 2

drop table Apps_NOT_Normalized;
Create Table Apps_NOT_Normalized(
  App_No integer,
  StudentID integer,
  StudentName varchar(50),
  Street varchar(100),
  State varchar(30),
  ZipCode varchar(7),
  App_Year integer,
  ReferenceName varchar(100),
  RefInstitution  varchar(100),
  ReferenceStatement varchar(500),
  PriorSchoolId integer,
  PriorSchoolAddr varchar(100),
  GPA number(2)
);

insert into Apps_NOT_Normalized values
  (1,
    1,
    'Mark','Grafton Street',
    'New York',
    'NY234',2003,
    'Dr. Jones',
    'Trinity College',
    'Good guy',
    1,
    'Castleknock',
    65);
