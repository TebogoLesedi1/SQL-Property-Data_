--PROPERTY24 SQL PRACTICE QUESTIONS
--1. Display all properties in the database.
select * from property24;

--2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.
select CITY, Province, Property_Price
from property24;

--3. List all distinct provinces in the table.
select distinct(Province)
from property24;

--4. Find all properties located in Gauteng.
select Property_ID AS 'properties located in Gauteng'
from property24
where Province = 'Gauteng';

--5. Show properties priced under R1,500,000.
select Property_ID AS 'Properties priced under R1,500,000'
from Property24
where Property_Price <= 1500000;

--6. List properties with more than 3 bedrooms.
select Property_ID AS 'Properties with 3 or more bedrooms', Bedrooms
from Property24
where Bedrooms >= 3;

--7. Find properties with parking for at least 2 cars.
select Property_ID, Parking
from Property24
where Parking >=2;

--8. Show properties where the monthly repayment is greater than R25,000.
select Property_ID, Monthly_Repayment
from Property24
where Monthly_Repayment >= 25000;

--9. Show all properties ordered by property price from highest to lowest.
select Property_ID 
from Property24
Order by Property_Price Desc;

--10. List properties ordered by floor size from smallest to largest.
select Property_ID
from Property24
Order by Floor_size Asc;

--11. Show Gauteng properties ordered by monthly repayment.
select Property_ID AS 'Gauteng properties ordered by monthly repayment'
from Property24
where Province = 'Gauteng'
Order by Monthly_Repayment Asc;

--12. Find Western Cape properties priced below R3,000,000.
select Property_ID AS ' Western Cape properties priced below R3,000,000'
from Property24
where Province = 'Western Cape' AND Property_Price < 3000000;

--13. Show KwaZulu-Natal properties with 3 or more bedrooms.
select Property_ID AS 'KwaZulu-Natal properties with 3 or more bedrooms'
from Property24
where Bedrooms <=3;

--14. Find properties in Limpopo or Free State ordered by property price.
select Property_ID AS 'properties in Limpopo or Free State ordered by property price.'
from Property24
where Province = 'Limpopo' OR  Province ='Free State'
order by Property_Price;

--15. Show the 10 most expensive properties.
select TOP 10 Property_ID AS'the 10 most expensive properties'
from Property24
order by Property_Price desc;

--16. Show the 5 cheapest properties.
select TOP 5 Property_ID AS'the 5 cheapest properties'
from Property24
order by Property_Price asc;

--17. Show the top 10 properties with the largest floor size.
select TOP 10 Property_ID AS'the 10 properties with the largest floor size'
from Property24
order by Floor_size desc;

--18. Which province appears to have the highest priced properties?
select TOP 1 Province AS'province with the highest priced properties'
from Property24
order by Property_Price DESC;

--19. Which cities appear to have the most affordable housing?
select TOP 5 City AS'cities that have the most affordable housing'
from Property24
order by Property_Price Asc;

--20. What minimum income is typically required for properties priced above R4,000,000?
select Min_Gross_Monthly_Income AS'minimum income typically required for properties priced above R4,000,000'
from Property24
where Property_Price > 4000000;
