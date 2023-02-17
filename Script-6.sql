select FIRST_NAME, LAST_NAME
from customer
inner join address 
on ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID and ADDRESS.DISTRICT = 'Texas';

-- Q.1 ANSWER = [JENNIFER DAVIS, KIM CRUZ, RICHARD MCCRARY, BRYAN HARDISON, IAN STILL]

select FIRST_NAME, LAST_NAME, PAYMENT.PAYMENT_ID,PAYMENT.amount
from CUSTOMER 
inner join payment
on PAYMENT.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID and PAYMENT.AMOUNT > 6.99;

-- Q. 2 ANSWER ABOVE

select FIRST_NAME, LAST_NAME
from CUSTOMER 
where CUSTOMER_ID in (
	select customer_id
	from payment
	group by customer_id 
	having SUM(AMOUNT)  > 175
	order by SUM(AMOUNT) DESC
)

-- Q. 3 ANSWER ABOVE

select *
from country 
where COUNTRY = 'Nepal'; 

COUNTRY_ID 66

 select * 
 from CITY
 where COUNTRY_ID = '66';
 
--ONE CITY_ID CORRESPONDS with THAT COUNTRY_ID

select FIRST_NAME, LAST_NAME
from customer c 
where ADDRESS_ID IN(
	select ADDRESS_ID
	from address
	where CITY_ID = '81'
);

--Q. 4 ANSWER = KEVIN SCHULER

select COUNT(distinct STAFF_ID)
from PAYMENT

--HM, TWO STAFF IDS.. I GUESS IVE GOT A 50/50 SHOT OF NAILING THIS ONE

select COUNT(*)
from payment
where STAFF_ID = '1';

SELECT COUNT(*)
from payment
where STAFF_ID = '2';

select * from STAFF
where staff_id = '2';

--Q. 5 ANSWER = JON STEPHENS

select * from FILM

select COUNT(FILM_ID), RATING
from FILM
group by RATING

-- Q. 6 ANSWER = NC-17 : 209; G : 178; PG-13 : 223; PG : 194; R : 196


select FIRST_NAME, LAST_NAME
from customer
where customer_id in (
	select CUSTOMER_ID from PAYMENT 
	where AMOUNT > 6.99
)

-- Q. 7 ANSWER ABOVE

select COUNT(RENTAL.RENTAL_ID)
from rental
left join payment
on PAYMENT.RENTAL_ID = RENTAL.rental_id
where PAYMENT.RENTAL_ID is null

-- Q. 8 ANSWER = 1452





