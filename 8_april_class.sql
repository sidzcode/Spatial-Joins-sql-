create table nyc_census_tract_geoms1 AS 
select
ST_UNION(geom) as geom,
substr(blkid,1,11) as tractid
from nyc_census_blocks
group by tractid;

create index nyc_census_tract_geoms_trackid_idx
on nyc_census_tract_geoms (tractid);

create table nyc_census_tracts as
select g.geom, a.*
from nyc_census_tract_geoms1 g
join nyc_census_sociodata a
on g.tractid = a.tractid;


create index nyc_census_tract_gidx
on nyc_census_tracts using GIST(geom);

select * from nyc_census_sociodata;

select
100.0*sum(t.edu_graduate_dipl)/sum(t.edu_total) as graduate_pct,
n.name,n.boroname
from nyc_neighborhoods n
join nyc_census_tracts t
on ST_Intersects(n.geom,t.geom)
where t.edu_total>0
group by n.name,n.boroname
order by graduate_pct desc
limit 10;

--ST_CENTROID avoids overlaps


select
100.0*sum(t.edu_graduate_dipl)/sum(t.edu_total) as graduate_pct,
n.name,n.boroname
from nyc_neighborhoods n
join nyc_census_tracts t
on ST_Contains(n.geom,ST_Centroid(t.geom))
where t.edu_total>0
group by n.name,n.boroname
order by graduate_pct desc
limit 10;








