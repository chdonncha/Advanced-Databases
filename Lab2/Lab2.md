## Exercise 1

<b><u>The Gill Art Gallery wishes to maintain data on their customers, artists and paintings. They may have several paintings by each artist in the gallery at one time. Paintings may be bought and sold several times. In other words, the gallery may sell a painting, then buy it back at a later date and sell it to another or the same customer (but one transaction per painting per day!).

<b><u>Produce a 1NF, 2NF, 3NF to store the data of the following form. The form contains all the paintings sold by the gallery to its customers (it does not contain the paintings that were bought by the gallery)

![1](images/1.jpg)

<b><u>In the above example, the galley sold 4 paintings to the customer Jackson, the paintings were made by two artists. The painting “Toward Emerald Sea” was sold twice (since the gallery can sell, rebuy and resell). Note that each artist has a unique code, while each painting is numbered for each artist (i.e. the painting code is not unique, it is unique only for a specific artist). Store the customer address using the following fields: street, city and zip code. The zip code identifies a city. Store the phone as a single (text) field.

UNF
---

Code
ArtistA
Painting code and Title
Purchase Date
Sales

1NF
---

![Exercise1_1](images/exercise1_1.png)

2NF
---

**Customer**
(<u>customer_id</u>, name, phone, address1, address2, zipcode)

**Purchases**
(<u>purchases_id</u>, <u>painting_code</u>, <u>purchases_code</u>, painting_title, artist, purchase_date, sales_price)

test

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

<b><u>You are required to:

<b><u>1. Create the table Apps_NOT_Normalized running the sql script applications.sql (from webcourses). 2. Normalize the following Apps_NOT_Normalized table respecting all the assumptions listed below 3. Create the normalized tables with sql developer and move data into the new tables 4. The normalized tables are usually more storage-efficient. What is the gain in storage efficiency (=the size in bytes of the normalized tables divided by the size of the starting non normalized table)?

<b><u>(In order to estimate the size of the table, assume that a varchar(X) has a size of X bytes, a date has a size of 8 bytes, an integer has a size of 4 bytes and a number(2) has a size of 4 bytes).

<b><u>Table Apps_NOT_Normalized:

<b><u>The following data describes information stored about students applying to a graduate school. Initially they are stored in one single table with no data normalization.

<b><u>Application-No + StudentID+ StudentName + Street + State + Zip-Code + ApplicYear + Reference-Name + RefInstitution + Reference-Statement + PriorSchool-Id + Prior-School-Addr + GPA

<b><u>The table contains information about the application number (unique for each year), the student ID and name, the student address (street, state, Zip-Code) the year of the application, the name of one or more referees, their institutions and the reference statement written by each referee (so one reference statement for each referee for a specific application), and a list of prior schools the student attended. For each prior school the DB stores the address and the GPA (final score obtained by the student in that school).

<b><u>Assume the following: · Applications are submitted for each year, applications numbers are reset every year and therefore they are unique only inside each year.

* <b><u>Student ID is unique for all the years (is assigned once for all once the student submit her/his first application)


* <b><u>A student might move to another address and the database has to store all the students addresses


* <b><u>An applicant can only apply once during each year.


* <b><u>Reference-Name and RefInstitution together are unique (but are not unique as separate attributes).


* <b><u>Prior-School-Id uniquely identifies a university or college.


* <b><u>A student might have many prior-schools and if she/he sends an applications in different years, it might have added a new prior school (therefore prior school lists might change across applications).


* <b><u>An applicant has only one GPA from any specific prior school.


* <b><u>For each application there could be one or more referees


* <b><u>Referees may write a reference statement for more than one applicants.


* <b><u>However, the reference statement for different applicants is different.


* <b><u>Reference statements are attached to an application. If a student submit a second application, the reference statements (even from the same referee) could be different.

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
