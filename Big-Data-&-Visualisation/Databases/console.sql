use world;

select *
from country
where Code like 'A%';

select *
from country
where IndepYear like '%1'
  and (Region like 'A%' or Region like 'B%');

select *
from country
where LifeExpectancy like '7%';

select *
from country
where Capital like '__';

select Name, Population
from city
order by Population;

select CountryCode, Population
from city
order by Population;

select *
from city
order by Population;

select Name, LifeExpectancy
from country
where Continent = 'Asia'
order by Population;

select Name, IndepYear
from country
where Continent = 'Europe'
order by Population and Code like '___';

select *
from country
limit 7;

select *
from country
order by LifeExpectancy desc
limit 5;

select Name
from country
where country.Continent = 'Asia'
order by Population desc
limit 3;

select *
from country
where country.Continent = 'Africa'
order by SurfaceArea
limit 10;



