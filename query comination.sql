create table food_online(
	Age int ,
	Gender varchar,
	Marital_Status varchar,
	Occupation varchar,
	Monthly_Income varchar,
	Educational_Qualifications varchar,
	Family_size	int,
	latitude int,
	longitude int,
	Pin_code int ,
	Output varchar,
	Feedback  varchar
)
alter table food_online alter column latitude type float

alter table food_online alter column longitude type float

select * from food_online

copy food_online from 'D:\Data Analytics SQL\Task4_Sql_AllQuery\food_online.csv' DELIMITER ',' csv header


--whose family size having 3 there total count of age 

select count(age)from food_online
	group by family_size 
	having family_size =3

select * from food_online

--count of feedback whose salary below rs 10000 and occupation is student
	
select count(feedback)from food_online
	where monthly_income ='Below Rs.10000'
	group by occupation ='student'

--sum of age and feedback have positive value only 
select feedback ,sum(age)from food_online
	where feedback='Positive'
	group by feedback 

--output is yes whose age is max there marital status 
select marital_status, 
	max(age) from food_online
	where output='Yes'
	group by marital_status

select * from food_online

--select latitude, longitude,pincode where pincode not null

select latitude,longitude,pin_code ,count(*)from food_online
	where pin_code is not null
	group by latitude ,longitude,pin_code
	having count (*)>5

--select occupation whose family size is greater than 2 
select occupation,gender ,sum(age)from food_online 
	where family_size > 2 
	group by gender,occupation
	having sum(age)>20

-- monthly income is not null

select count(family_size) from food_online 
	where monthly_income is not null
	group by family_size 


	
-- where monthly income is greater than  597
select monthly_income ,
	sum(age) from food_online 
	where monthly_income>'597'
	group by monthly_income 

	






