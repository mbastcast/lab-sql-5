#Drop column picture from staff.
DROP COLUMN PICTURE FROM STAFF
#A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

#Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
SELECT * FROM STAFF LIMIT 5;
INSERT INTO STAFF VALUES (3, "TAMMY","SANDERS",79,"","TAMMY.SANDERS@SAKILACUSTOMER.ORG",2,1,"TAMMY","","2006-02-12");
SELECT* FROM STAFF LIMIT 5;

#Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
SELECT* FROM film
WHERE TITLE = "Academy Dinosaur";
SELECT * FROM RENTAL LIMIT 3;
SELECT * FROM INVENTORY WHERE FILM_ID=1;
SELECT * FROM CUSTOMER 
WHERE FIRST_NAME="MIKE";
INSERT INTO CUSTOMER VALUES(12345,1,"MIKE","HILLYER","MIKEHILLYES@SAKILACUSTOMER.ORG",7,1,NOW(),NOW());
INSERT INTO RENTAL VALUES(123456, NOW(),1,12345,NOW(),1,NOW());


#Delete non-active users, but first, create a backup table deleted_users to store customer_id, email, and the date for the users that would be deleted. Follow these steps:
select * from customer where active =0;
create table deleted_users(
  customer_id int(8),
  email text default null,
  date text);
  
  insert into deleted_users (customer_id,email,date)
  select customer_id, email, last_update
  from customer
  where active = 0;
  SELECT * FROM DELETED_USERS;
  Delete from CUSTOMER where ACTIVE=0;
