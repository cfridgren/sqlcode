-- data analysis using mavenfuzzyfactory ecom data

use mavenfuzzyfactory; 

select *
from orders o
where o.website_session_id = 1059;

select *
from website_sessions 
where website_session_id between 1000 and 2000;


select utm_content, count(distinct website_session_id) as sessions
from website_sessions
where website_session_id between 1000 and 2000
group by utm_content
order by sessions desc;



select *
from website_pageviews  
where website_session_id = 1059;
