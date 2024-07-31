drop table brooklyn_dmz 
create table brooklyn_dmz as
select 
ST_Intersection(
	ST_Buffer(ps.geom,50),
	ST_Buffer(cg.geom,50))
as geom
from
nyc_neighborhoods ps,
nyc_neighborhoods cg
where ps.name ='Park Slope'
and cg.name='Carroll Gardens';

select * from brooklyn_dmz;



create table brooklyn_dmr as
select ps.name,
ST_Transform(ST_Intersection(ST_Buffer(ps.geom,50),ST_Buffer(cg.geom,50)),4326)
as geom
from nyc_neighborhoods ps
join nyc_neighborhoods cg on ps.name ='Park Slope'
and cg.name='Carroll Gardens';
