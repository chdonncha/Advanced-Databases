#### Converting the following ERD to demensional:
----
##### ERD
---

Customer
(C_Code, Name, Address, Phone, Bday, Gender, Country_Code)

Wine
(W_Code, Wine_Name, Type, Vintage, CL_Code, Prod_Code)

Class
(CL_Code, Name, Region, Country_Code)

Order
(C_Code, W_Code, Date, nrBottles, nrCases)

Producer
(Prod_Code, P_Name, P_Address)

Prices
(W_Code, Date, BottlePrices, CassesPrice)

----
##### Dimensional Diagram Conversion
---
![dim1](Images/Dim1.jpg)

<b>Query Example:</b>

SELECT AVG(Bottles), Class Dimension.Regionm Wine Dimension.Wine_sk, Wine_Name
FROM Fact F JOIN Wine Dimension ON F.Wine_sk = Wine Dimension.wine_sk
JOIN Class Dimension ON F.Class_sk = Class Dimension.Class_sk
GROUP BY Region, Wine_sk;
