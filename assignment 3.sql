SELECT 
    s.name AS subway_station
    --r.route_name AS subway_route
FROM 
    nyc_subway_stations s
JOIN 
    nyc_subway_stations  r ON s.routes = r.routes
WHERE 
    ST_Intersects(s.geom, (SELECT geom FROM nyc_neighborhoods WHERE name = 'Little Italy'));


select s.name,s.routes from nyc_subway_stations as s
join nyc_neighborhoods as n
on ST_Contains(n.geom,s.geom)
where n.name ='Little Italy';

select * from nyc_neighborhoods


select * from nyc_census_blocks




select Sum(popn_total) from nyc_neighborhoods as n
join nyc_census_blocks as c
on ST_Intersects(n.geom,c.geom)
where n.name ='Battery Park'



select n.name,
	1000000*sum(c.popn_total)/ST_area(n.geom) AS popn_per_sqkm
from nyc_census_blocks as c
join nyc_neighborhoods as n
on ST_Intersects(c.geom,n.geom)
group by n.name,n.geom
order by popn_per_sqkm desc limit 1;





SELECT s.name, n.name, n.boroname FROM nyc_neighborhoods AS n
JOIN nyc_subway_stations AS s  
ON ST_Contains( 
 n.geom, 
 s.geom 
 ) 
WHERE s.name = 'ft Hamilton Pky '; 

select * from nyc_subway_stations where name = 'ft Hamilton Pky ';


select n.name,
	1000000*sum(c.popn_white)/ST_area(n.geom) AS popn_per_sqkm
from nyc_census_blocks as c
join nyc_neighborhoods as n
on ST_Intersects(c.geom,n.geom)
group by n.name,n.geom
order by popn_per_sqkm desc limit 1;



select 100*SUM(c.popn_black)/SUM(c.popn_total) AS black_pct,  SUM(popn_total) AS popn_total 
FROM nyc_census_blocks AS c 
JOIN nyc_subway_stations AS s 
 ON ST_DWithin( 
 c.geom, 
 s.geom, 
 100 
 ) 
WHERE strpos(s.routes,'J') > 0;

select popn_total from nyc_neighborhoods as n
join nyc_census_blocks as c
on ST_Intersects(n.geom,c.geom)
where n.name ='Battery Park'

select s.popn_total,n.name from nyc_neighborhoods as n
join nyc_census_blocks as s
on ST_Intersects(n.geom,s.geom)
  order by popn_total asc  limit 10;
  
select n.name,sum(c.popn_total) from nyc_neighborhoods as n
join nyc_census_blocks as c
on ST_Intersects(n.geom,c.geom)
group by n.name order by sum(c.popn_total) asc limit 10; 


select st_distance(a.geom,b.geom)/1000 from nyc_streets as a
join nyc_streets as b
on st_contains(a.geom,b.geom) where a.name ilike 'brooklyn'


































