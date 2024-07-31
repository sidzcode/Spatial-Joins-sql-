create table geometrics1
(
	name varchar,
	geom geometry
)


	
	
	INSERT INTO geometrics1 VALUES
  ('Point', 'POINT(0 0)'),
  ('Linestring', 'LINESTRING(0 0, 1 1, 2 1, 2 2)'),
  ('Polygon', 'POLYGON((0 0, 1 0, 1 1, 0 1, 0 0))'),
  ('PolygonWithHole', 'POLYGON((0 0, 10 0, 10 10, 0 10, 0 0),(1 1, 1 2, 2 2, 2 1, 1 1))'),
  ('Collection', 'GEOMETRYCOLLECTION(POINT(2 0),POLYGON((0 0, 1 0, 1 1, 0 1, 0 0)))');
  
  
  select * from geometrics1;
  
 SELECT name, 
ST_GeometryType(gid), 
ST_NDims(gid), 
ST_SRID(gid)
  FROM geometrics1;
  
create table school(id serial primary key,name varchar(64),geom geometry(POINT,3005));  
  
  
insert into school values(1,'Pune Public School',ST_GeomFromText('POINT(-0.116190 51.556173)'))
  
  select * from public.school order by id asc;
  
  
  
  
  
  
  
  
  
  

