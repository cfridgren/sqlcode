
-- data analysis 
-- Join 
select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.team
from sales s
join people p  on p.SPID = s.SPID
join products pr  on pr.PID = s.PID
where s.Amount < 500
and p.Team = 'Delish';


-- join  
select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.team, g.Geo
from sales s
join people p  on p.SPID = s.SPID
join products pr  on pr.PID = s.PID
join geo g on g.GeoID = s.GeoID
where s.Amount < 500
and p.Team  = ''
and g.Geo in ('New Zealand', 'India')
order by s.SaleDate;

-- Group by #1
select GeoID, sum(amount), avg(amount), sum(boxes)
from sales s
group by GeoID;


-- Group by and join #2
select g.Geo, sum(amount), avg(amount), sum(boxes)
from sales s
join geo g on s.GeoID = g.GeoID
group by g.Geo;

-- group by Category and team 
select pr.Category, p.Team, sum(Boxes), sum(Amount)
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where p.Team != ''
group by pr.Category, p.Team
order by pr.Category, p.Team;

-- Top 10 products
select pr.Product, sum(s.Amount) as 'Total Amount' 
from sales s
join products pr on pr.pid = s.PID
group by pr.Product, s.Amount
order by s.Amount desc
limit 10;







 