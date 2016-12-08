## Exercise 1

UNF


![1](images/1.jpg)

1NF

first we remove any repeating groups to move it into 1nf

![Exercise1_1](images/exercise1_1.png)
![9](images/9.jpg)

2NF

as 1nf appears to be 2 tables sqashed into one we seperate them into customer and purchases tables and give primary keys to them both, reducing dependencies

![11](images/11.jpg)

3NF

relationships are establisehd and tables are further broken down, ensuring there is no repeating data or tables

![12](images/12.jpg)

## Exercise 2

UNF

![2](images/2.jpg)

1NF

data is seperated into tables and a relationship is stablished, repeating attributes are eliminated

![4](images/4_1.jpg)

2NF

data is further broken down to reduce dependencies and repeating data

![3](images/3.jpg)

3NF

relationships are estalished to ensure a structure and reduced dependencies, it reduces the byte size through dastrically reducing the repedition of tables and entities

![5](images/10.jpg)

#### Storage Effiency:

<b>Unnormalised:

(4 + 4 + 50 + 100 + 30 + 7 + 4 + 100 + 100 + 500 + 4 + 100 + 4) *36 = <u>1007</u>

<b>Normalised:

Education Institute:
(4+100) * 10 = <u>1040</u>

Referee
(4 + 50) * 4 = <u>208</u>

RefreeInstitute:
(4 + 4 + 4) * 6  = <u>72</u>

Address:
(4 + 7 + 30 + 100) * = <u>1128</u>

Student:
(4 + 50) * 6 = <u>324</u>

Application:
(4 + 4 + 4 + 4 + 4 + 4 + 4) * 36 = <u>1008</u>

Reference:
(4 + 500) * 9 = <u>4536</u>

StudentAddress:
(4 + 4 + 4) * 9 = <u>108</u>

Total Normalised

1040 + 1008 + 208 + 4536 + 72 + 108 + 1128 + 324 = <u>8424</u>

<b>Gain in Storage Efficiency</b>

26252/8424 * 100 = <b><u>418%</b></u> Increase in Efficiency
