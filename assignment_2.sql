SELECT name, geom
  FROM nyc_streets
  WHERE name = '103rd Dr';
  
 select * from nyc_neighborhoods;
--"01050000202669000001000000010200000002000000FBC418875B4222415F26A795AB2E51411B541E57DC422241005499EEB12E5141"

select borough,nghbhd from nyc_subway_stations where ST_Equals(
 geom, 
	'01050000202669000001000000010200000002000000FBC418875B4222415F26A795AB2E51411B541E57DC422241005499EEB12E5141'
);
SELECT name
FROM nyc_streets
WHERE ST_DWithin(
 geom,
 ST_GeomFromText('POINT(583571 4506714)',26918),
 10
);
