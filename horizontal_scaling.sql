create table horizontal if not exists(source varcher(50), destination varcher(50))
insert into 
   horizontal 
values('chennai','delhi'),
   ('goa','chennai'),
   ('delhi','chennai'),
   ('chennai','goa'),
   ('mumbai','chennai')


select source, destination 
from (select *,
        case when source > destination then source else destination end as g,
        case when source < destination then source else destination end as l
      from horizontal)
group by l,g;
