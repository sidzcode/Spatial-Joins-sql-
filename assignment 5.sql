--create a buffer of 100m around morris park station with base map

create table morris_park as
select ss.name,
ST_Transform(ST_Buffer(ss.geom,100),4326)
as geom
from nyc_subway_stations ss
 where name='Morris Park';
 
 select * from nyc_neighborhoods;
 
--construct a polygon delineating a 50m on border between
--the neighborhoods battery park and financial district

create table new_polygon as
select ps.name,
ST_Transform(ST_Intersection(ST_Buffer(ps.geom,50),ST_Buffer(cg.geom,50)),4326)
as geom
from nyc_neighborhoods ps
join nyc_neighborhoods cg on ps.name ='Battery Park'
and cg.name='Financial District';


--How much population is residing within 10 meters of broad street subway sttion? make new polygon with base map


select * from nyc_census_blocks;
select * from nyc_subway_stations;



drop table population_bs
create table population_bs as
select s.name,sum(c.popn_total),
ST_Transform(ST_Buffer(s.geom,10),4326)
as geom
from nyc_subway_stations s
join nyc_census_blocks c
on s.name='Broad St'
group by s.name,s.geom


