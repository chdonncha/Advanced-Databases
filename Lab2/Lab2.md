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

UNF

![2](images/2.jpg)

1NF

![4](images/4_1.jpg)

2NF

![3](images/3.jpg)

3NF

![5](images/6.jpg)

---

<b> Sql Code:

```sql
CREATE TABLE EducationInstitute
(
	InstituteId             integer NOT NULL,
	InstituteName           varchar(100) NULL,
	PRIMARY KEY (InstituteId)
);

CREATE TABLE Referee
(
	RefereeId            integer NOT NULL,
	RefereeName          varchar(50) NULL,
	PRIMARY KEY (RefereeId)
);

CREATE TABLE RefereeInstitute
(
	RefereeId            integer NOT NULL,
	InstituteId             integer NULL,
	PRIMARY KEY (RefereeId),
	CONSTRAINT R_3 FOREIGN KEY (RefereeId) REFERENCES Referee (RefereeId),
	CONSTRAINT R_4 FOREIGN KEY (InstituteId) REFERENCES EducationInstitute (InstituteId)
);

CREATE TABLE Zip
(
	ZipCode              varchar(7) NOT NULL,
	Street               varchar(30) NULL,
	State                varchar(30) NULL,
	PRIMARY KEY (ZipCode)
);

CREATE TABLE Student
(
	StudentId            integer NOT NULL,
	StudentName          varchar(50) NULL,
	ZipCode              varchar(7) NULL,
	PRIMARY KEY (StudentId),
	CONSTRAINT R_1 FOREIGN KEY (ZipCode) REFERENCES Zip (ZipCode)
);

CREATE TABLE Reference
(
	ReferenceId          integer NOT NULL,
	ReferenceStatement   varchar(500) NULL,
	RefereeId            integer NULL,
	PRIMARY KEY (ReferenceId)
);

CREATE TABLE Application
(
	ApplicationNumber    integer NOT NULL,
	StudentId            integer NULL,
	AppYear              integer NULL,
	ReferenceId          integer NULL,
	PriorInstituteId     integer NULL,
	GPA                  number(2) NULL,
	PRIMARY KEY (ApplicationNumber),
	CONSTRAINT R_6 FOREIGN KEY (StudentId) REFERENCES Student (StudentId),
	CONSTRAINT R_7 FOREIGN KEY (ReferenceId) REFERENCES Reference (ReferenceId),
	CONSTRAINT R_8 FOREIGN KEY (PriorInstituteId) REFERENCES EducationInstitute (InstituteId)
);
```
---

And the Inserts

test
