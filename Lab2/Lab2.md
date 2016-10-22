## Exercise 1

<b><u>The Gill Art Gallery wishes to maintain data on their customers, artists and paintings. They may have several paintings by each artist in the gallery at one time. Paintings may be bought and sold several times. In other words, the gallery may sell a painting, then buy it back at a later date and sell it to another or the same customer (but one transaction per painting per day!).

<b><u>Produce a 1NF, 2NF, 3NF to store the data of the following form. The form contains all the paintings sold by the gallery to its customers (it does not contain the paintings that were bought by the gallery)



UNF
---

![1](images/1.jpg)

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

UNF

![2](images/2.jpg)

1NF

![4](images/4_1.jpg)

2NF

![3](images/3.jpg)

3NF

![5](images/10.jpg)

---
