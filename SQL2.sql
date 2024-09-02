create database World;
use world;
#import data from CSV

# select
select * from city;
select * from countrylanguage;
select * from country;

#display only 3 column in country
select Code, name, continent from country;

#derive new column alias population density
select * from country;
select name, continent, surfacearea, population , 
round(population/surfacearea,2) as Pop_Density from country;

#limit

select * from city
limit 5;

#offset 
#data from city id 11 till 15
select * from city
limit 5
offset 10;

#order by
select * from city;
# highest pop
select * from city
order by population desc;

#display city with highest population
select * from city
order by population desc
limit 1;

# display top 5 cities by pop
select * from city
order by population desc
limit 5;

#display the details of 174th ranked city by pop
# display top 5 cities by pop
select * from city
order by population desc
limit 1
offset 16;

#multiple orderby
select * from country
order by continent desc,name;

#data filtering
select * from country
where continent = 'Asia';

select * from country
where IndepYear= 1948;

#realtional operator (>,<,=,<=,>=)
select * from country
where IndepYear > 1947
order by IndepYear desc;

select name, continent from country
where surfacearea >5000000;

select * from country
where IndepYear <>1947;

#countries that got indep after 1950 in aisa continent
Select * from country 
where IndepYear > 1950 and continent="Aisa";

# display the data of countries asia afric and north america
select * from country where
continent = "Asia" or continent = "Africa" or continent = "North america";

select * from country
where continent in ("Aisa","Africa","North america");

#get the data of all countries which got their indep between 1950 and 1960
select * from country
where indepyear >= 1950 and indepyear <= 1960
order by indepyear;

Select * from country
where indepyear between 1950 and 1960
order by indepyear;

#Like  %any no of character
select * from country
where name like "%A%";

select * from country
where name not like "%A%";

select * from country
where name like "A%";

# _ fix number of characters
select * from country
where name like "A______";

select * from country
where name like "____a%";
