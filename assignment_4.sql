--Q1

select n.name,
	1000000*sum(c.popn_total)/ST_area(n.geom) AS popn_per_sqkm
from nyc_census_blocks as c
join nyc_neighborhoods as n
on ST_Intersects(c.geom,n.geom)
group by n.name,n.geom
order by popn_per_sqkm asc limit 1;


--Q2

select count(s.name) as no_of_station,n.name,s.routes,s.color from  nyc_subway_stations as s
join nyc_neighborhoods as n on ST_contains(n.geom,s.geom)
where  n.name='Morris Park' group by s.routes,s.color,n.name;

--Q3

select sum(n.popn_black) from nyc_census_blocks as n join nyc_subway_stations as s
on st_dwithin(n.geom,s.geom,100)
where s.routes ilike '%b%';

--Q4

select count(s.routes)
as no_of_routes_associated_with_route_j
from nyc_neighborhoods as n
join nyc_subway_stations as s
on st_intersects(n.geom,s.geom)
where s.routes ilike '%j%'

--Q5

select n.boroname,sum(c.popn_total)
as total_population_in_The_Bronx,sum(c.popn_white)
as total_white_population_in_The_Bronx,sum(c.popn_black)
as total_black_population_in_The_Bronx
from nyc_census_blocks as c
join nyc_neighborhoods as n on
 st_intersects(c.geom,n.geom) where
 n.boroname ilike 'The Bronx'
group by n.boroname;

--Q6

select type,sum(st_length(geom))/1000
as lenght_of_streets_in_kms from nyc_streets
group by type order by type asc

--Q8

select sum(st_distance(a.geom,b.geom))/1000
as distance_between_103rddr_and_Atlantic_Commons_in_kms
from nyc_streets as a,nyc_streets as b
where a.name ilike '103rd Dr'
and b.name ilike 'Atlantic Commons';

--Q9

select c.name as street_names_within_10_mtrs,s.name
as station_name from nyc_streets as c
join nyc_subway_stations as s
on st_dwithin(c.geom,s.geom,10)
where c.name ilike 'Broad st'


--Q10

select sum(st_area(geom))/0.00025
as area_of_Brooklyn_in_acres
from nyc_neighborhoods
where boroname ilike 'Brooklyn'










