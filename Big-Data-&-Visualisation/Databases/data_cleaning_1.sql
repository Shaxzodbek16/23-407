create schema customer;

use customer;

select *
from cleandata;

alter table cleandata rename column sweepstake_id to sweepstake_id;

select phone, regexp_replace(phone, '[()/<>=+-]', '')
from cleandata;

update cleandata
set phone=regexp_replace(phone, '[()/<>=+-]', '');

select phone, concat(substring(phone, 1, 3), '-', substring(phone, 4, 3), '-', substring(phone, 7))
from cleandata;

update cleandata
set phone=concat(substring(phone, 1, 3), '-', substring(phone, 4, 3), '-', substring(phone, 7));

select `Are you over 18?`,
       case
           when `Are you over 18?` = 'Yes' then 'Y'
           when `Are you over 18?` = 'No' then 'N'
           else `Are you over 18?` end
from cleandata;


update cleandata
set `Are you over 18?`=case
                           when `Are you over 18?` = 'Yes' then 'Y'
                           when `Are you over 18?` = 'No' then 'N'
                           else `Are you over 18?` end;


select favorite_color, concat(upper(substring(favorite_color, 1, 1)), lower(substring(favorite_color, 2)))
from cleandata;

update cleandata
set favorite_color=concat(upper(substring(favorite_color, 1, 1)), lower(substring(favorite_color, 2)));


select * from cleandata;