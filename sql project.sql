create database portfolio;
use portfolio;
select*from mobile;
-- check phone name and price list--
select phone_name,price from mobile;
-- find top 5 most expensive phones--
select* from mobile
order by price desc
limit 5;
-- find top 5 most cheapest phones--
select * from mobile  
order by price asc
limit 5;
-- find list of top 5 samsung phone with price and all features--
select* from mobile
where Brands='Samsung'
order by price desc
limit 5;
-- must have android phone list then top 5 high price android phones--
select* from mobile
where Operating_System_Type='Android'
order by price desc
limit 5;
-- must have android phone list then cheapest five android phones--
select* from mobile
where Operating_System_Type='Android'
order by price asc
limit 5;
-- must have ios phonelist then top 5 phones--
select*from mobile
where Operating_System_Type='iOS'
order by price desc
limit 5;
-- must have ios phonelist then cheapest 5 phones--
select*from mobile
where Operating_System_Type='iOS'
order by price asc
limit 5;
-- write a query to find which phone support 5G and top 5 5G  supported phone--
select* from mobile
where 5G_Availability='Yes'
order by price desc
limit 5;
-- Total price of all the phone with brand name--
select Brands ,sum(Price) from mobile 
group by Brands;



