







select source, destination 
from (select *,
        case when source > destination then source else destination end as g,
        case when source < destination then source else destination end as l
      from horizontal)
group by l,g;
