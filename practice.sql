select count(*) from nyc_streets;
select * from nyc_streets;
select count(*) from nyc_streets where name like 'B%'

select count(*) from nyc_streets where oneway='yes';

select count('oneway') from nyc_streets;
select * from nyc_census_blocks where boroname='Newyork';

select sum(popn_total) from nyc_census_blocks where boroname='The Bronx' group by boroname;

select * from nyc_neighborhoods;

select count(gid),boroname  from nyc_census_blocks group by boroname;

select count(boroname) from nyc_neighborhoods;

select count(gid),(borough) from nyc_subway_stations group by borough;

select sum(popn_white)/sum(popn_total)*100 as percentage_of_white_population,
boroname from nyc_census_blocks group by boroname;

select * from nyc_census_blocks;

select sum(popn_asian)/sum(popn_total)*100 as percentage_of_asian_in_manhattan ,boroname
from nyc_census_blocks where boroname='Manhattan' group by boroname;

select sum(popn_asian)
from nyc_census_blocks where boroname='Manhattan' group by boroname;

select * from nyc_neighborhoods where name='Little Italy';

select count(name),borough from nyc_subway_stations group by boroname

select count(name),borough from nyc_subway_stations group by borough;

select name,ST_AsText(geom) from nyc_streets where name='103rd Dr'

select * from nyc_streets;

select n.boroname,s.name from nyc_neighborhoods as n 
join nyc_streets s
on (n.geom=s.geom) where s.name='103rd Dr';


select name,boroname from nyc_neighborhoods where ST_Intersects(geom,
'01050000202669000001000000010200000002000000FBC418875B4222415F26A795AB2E51411B541E57DC422241005499EEB12E5141')


select name from nyc_streets where ST_Touches(geom,
'01050000202669000001000000010200000002000000FBC418875B4222415F26A795AB2E51411B541E57DC422241005499EEB12E5141'
)

select sum(popn_total) from nyc_census_blocks where ST_DWithin(geom,
'01050000202669000001000000010200000002000000FBC418875B4222415F26A795AB2E51411B541E57DC422241005499EEB12E5141',50)

select name as name_of_residents from nyc_streets where ST_DWithin(geom,
'01050000202669000001000000010200000002000000FBC418875B4222415F26A795AB2E51411B541E57DC422241005499EEB12E5141',50);

select * from nyc_subway_stations;

select count(name) as no_of_subway_stations from nyc_subway_stations where borough='Queens';

select name,geom from nyc_streets where name = 'Eastern Pky';

select ST_Distance(a.geom,b.geom) from nyc_streets a,nyc_streets b where a.name='103rd Dr' and b.name='Atlantic Commons'


select name from nyc_streets where ST_Intersects(geom,
'01050000202669000001000000010200000002000000093235673BE82141F319CD89A22E514170E30E0ADFE82141CB2D3EFFA52E5141')

select name,boroname from nyc_neighborhoods where ST_Intersects(geom,
'010500002026690000010000000102000000020000006E4BE8CED2092241208595E4FB2C5141574F9A900A0A2241A04BFEEEF12C5141')


select ST_Distance(a.geom,b.geom)/1000 as Distance_in_KMS from nyc_streets a, nyc_streets b
where a.name='Fulton Ave' and b.name='Columbus Cir'

select name,ST_AsText(geom) from nyc_streets where name='Columbus Cir'

select sum(popn_black) from nyc_census_blocks where ST_DWithin(geom,
'0105000020266900000100000001020000002900000044B92CDC30E12141B0A8BF74BE37514101A7DECA36E1214132FDDA04C037514193CEAE4340E12141A6AB7CA4C13751417485FDC84AE12141C42908E1C237514149429B8658E121414AC53EFBC3375141D6495F7765E12141F6885E9CC43751419C5BC1836AE12141AE55E0C8C43751413B5E97BA7DE1214124AA2B1EC5375141EBD3457E91E12141939BE0FAC437514113879611A1E121413F8DC380C43751419B709CC9ADE12141EF0710E2C3375141CEA1FC5AB1E12141EE5770A3C33751418C56EDB3C1E12141CC26584DC23751416180C76BD3E1214198978B62C03751411F6C8241E0E12141ECB62484BE375141A51A3DA7E7E1214114A23207BD375141433B1866EDE1214134892926BB3751412B7B5D29F0E12141DDD06FD9B8375141DA861E22EFE1214101631804B737514113403BC5EBE121416AE3183CB5375141708A9154E5E121412FB12A81B3375141BFE7B62CE3E12141A4BEC815B3375141BE0FE93BD8E1214196983B19B13751413C5C2189CAE12141AB349B5BAF375141FF04B6FBBBE12141B59B7416AE375141C987C9C1B5E12141D6A3AAB0AD3751418F06907AA8E12141A4396A0FAD37514136DFE3C996E12141BB6779ACAC375141E487253D86E12141D60FA5BBAC375141BE5A565576E1214192085220AD3751415F7C5B3C67E12141BED7C5E8AD37514183C64D3A5EE12141108CF58FAE375141A60B7AF14FE12141EABEFAADAF37514125B07B7742E12141CCBCC62FB137514190B4E35137E12141801ACF0EB33751417106898C2FE12141834B18EFB43751410BE8D3A12AE121414CA612FBB6375141C5E90F9E28E121415FE3C8DCB837514137D1BD1529E121410ABA78EBBA375141D666FF152DE12141C753EB48BD37514144B92CDC30E12141B0A8BF74BE375141',100)

select * from nyc_census_blocks;

select * from nyc_neighborhoods where name='Little Italy';

select s.name,s.routes from nyc_subway_stations s where ST_Intersects(geom,
'01060000202669000001000000010300000001000000070000009124E046FDD721412DFD413FCE32514160C6659462D82141E5FC55DCF3325141BBB5E13E12D921413D8E2F0719335141C3360972E8DA2141EEB3522A003351412090EF3329D92141D29417F83F3251414FFC73AAFBD5214152C024F56B3251419124E046FDD721412DFD413FCE325141')

select s.name,s.routes from nyc_subway_stations as s 
join nyc_neighborhoods as n 
on ST_Contains(n.geom,s.geom)
where n.name='Little Italy'


select distinct n.name,n.boroname,s.routes from nyc_neighborhoods as n join nyc_subway_stations as s 
on ST_Contains(n.geom,s.geom)
where s.routes LIKE '%6%'

select name from nyc_neighborhoods where name='Battery Park'

select sum(popn_total) as total_no_of_people_evacuated

select sum(c.popn_total),n.name from nyc_census_blocks as c 
join nyc_neighborhoods as n
on ST_Contains(n.geom,c.geom)
where n.name='Battery Park' group by n.name;

select sum(c.popn_total),n.name from nyc_census_blocks as c 
join nyc_neighborhoods as n
on ST_Intersects(n.geom,c.geom)
where n.name='Battery Park' group by n.name;

select n.name,
1000000*sum(c.popn_total)/ST_area(n.geom)
as popn_per_sqkm
from nyc_neighborhoods as n
join nyc_census_blocks as c
on ST_Intersects(n.geom,c.geom)
group by n.name,n.geom
order by popn_per_sqkm desc limit 1;

select n.name,
1000000*sum(s.popn_white)/ST_area(n.geom) as POPN_per_sqkm
from nyc_neighborhoods as n
join nyc_census_blocks as s
on ST_Contains(n.geom,s.geom)
group by n.name,n.geom
order by POPN_per_sqkm desc limit 1





select n.boroname,s.name from nyc_neighborhoods as n
join nyc_subway_stations as s
on ST_Intersects(n.geom,s.geom)
where s.name='ft Hamilton Pky';

select * from nyc_subway_stations where name='ft Hamilton Pky ';



select n.name,n.boroname,s.name from
nyc_neighborhoods as n join
nyc_subway_stations as s
on ST_Contains(s.geom,n.geom)
where s.name='ft Hamilton Pky '

select sum(c.popn_black) from nyc_census_blocks as c
join nyc_subway_stations as s
on ST_DWithin(c.geom,s.geom,100)
where s.routes like '%J%'

select n.name,sum(c.popn_total) as Total_population
from nyc_neighborhoods as n
join nyc_census_blocks as c
on ST_Intersects(n.geom,c.geom)
group by n.name,n.geom
order by Total_population asc limit 10;


select n.boroname,sum(c.popn_total) as Total_popu
from nyc_neighborhoods as n
join nyc_census_blocks as c
on ST_Intersects(n.geom,c.geom)
where n.boroname='Queens'
group by n.boroname;

select n.name,n.boroname,
1000000*sum(s.popn_total)/ST_area(n.geom) as POPN_per_sqkm
from nyc_neighborhoods as n
join nyc_census_blocks as s
on ST_Intersects(n.geom,s.geom)
group by n.name,n.boroname,n.geom
order by POPN_per_sqkm asc limit 1 ;


select n.name,s.routes,s.color from
nyc_neighborhoods as n
join nyc_subway_stations as s
on ST_Intersects(n.geom,s.geom)
where n.name='Morris Park';



select sum(c.popn_black) from nyc_census_blocks as c
join nyc_subway_stations as s
on ST_DWithin(s.geom,c.geom,100)
where s.routes like '%B%'

select count(routes) as No_of_routes
from nyc_subway_stations where routes like '%J%';

select sum(c.popn_total),n.boroname 
from nyc_census_blocks as c
join nyc_neighborhoods as n
on ST_Intersects(c.geom,n.geom)
where n.boroname='The Bronx'
group by n.boroname


select type,sum(st_length(geom))/1000
as length_of_streets_kms from nyc_streets
group by type order by type asc

select sum(c.popn_total),n.name from
nyc_census_blocks as c
join nyc_neighborhoods as n
on ST_Intersects(n.geom,c.geom)
where n.name='Financial District'
group by n.name


select sum(ST_distance(a.geom,b.geom))/1000 as distance_inkms from
nyc_streets as a,
nyc_streets as b
where a.name ilike '103rd Dr' and b.name ilike 'Atlantic Commons'

select sum(ST_Distance(a.geom,b.geom))/1000 as DISTANCE_IN_KMS from nyc_streets as a, nyc_streets as b
where a.name ilike '103rd Dr' and b.name ilike 'Atlantic Commons';


select s.name from nyc_streets as s 
join nyc_subway_stations as st
on ST_DWithin(s.geom,st.geom,10)
where st.name ilike 'Broad St'

select * from nyc_streets where name ilike 'Broad st';


select * from nyc_neighborhoods

select sum(ST_Area(geom))/0.00025 as AREA_IN_ACRES
from nyc_neighborhoods
where boroname='Brooklyn'









