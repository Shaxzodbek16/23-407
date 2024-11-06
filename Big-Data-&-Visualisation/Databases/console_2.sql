use chinook;

select * from customer;

select FirstName, length(FirstName) as 'First_name_length', PostalCode , length(PostalCode) as 'PostalCode_length' from customer;

select BillingPostalCode, length(BillingPostalCode) as 'BPC ' from invoice;

select upper(BillingCity) as 'Upper_BillingCountry', upper(BillingCountry) as 'Upper_BillingCountry' from invoice;

select lower(BillingAddress) as 'lower_BillingAddress' from invoice;

select upper(FirstName) as 'first_name', upper(LastName) as 'lat_name', lower(Address) as 'address' from customer where Phone like '+3%';

select upper(FirstName), upper(Country), Phone, Email, SupportRepId from customer where Email like '%.com' order by SupportRepId desc;

select substring(HireDate, 6, 2) as 'Hired_month' from employee;

select substring(BirthDate, 1, 4) as 'Birth_date' from employee;

select replace(Email, '.fr','.com') as "Email" from customer;

select concat(upper(FirstName), ' ', LastName) as 'FullName' from employee;
select concat(upper(FirstName), ' ', BirthDate) as 'NameBirth' from employee;

select length(concat(upper(FirstName),' ',year(BirthDate))) as 'LengthOfBirthAndNameUnion' from employee;

