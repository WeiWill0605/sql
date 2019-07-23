select * from eventlogs.event_mercadoshopsaction order by 1 desc;

select * from eventlogs.event_mercadoshopsaction where jobid = -1 order by 1 desc;
select * from eventlogs.event_mercadoshopsaction where EventID < 86 order by 1 desc;
select * from eventlogs.event_mercadoshopsaction where severityid > 2 order by 1 desc;


SELECT * FROM mercado_stores order by 1 desc;


select distinct StoreId from chinaecommerce.Mercado_Stores order by 1 desc;

select * from mercado_storeinfo order by 1 desc;



