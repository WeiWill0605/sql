
select * from zwei.data_market_company order by 1 desc;


select * from zwei.data_market_company where year(startup_date)  = 1987 order by 1 desc;

select count(1), year(startup_date) from zwei.data_market_company where license_capital < 2000000 group by year(startup_date) order by 2 desc;

select count(1), sum(small_company), sum(small_company) / count(1) as small_company_ratio, year(startup_date) from 
(select (case when  license_capital <= 5000000 then 1 else 0 end) as small_company, startup_date from zwei.data_market_company where license_capital is not null and startup_date is not null ) as A
group by year(startup_date) order by 1 desc;