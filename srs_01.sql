with ihub_nairobi as (
	select
		'iHub, Nairobi' as venue_name,
		'SRID=4326; POINT(36.78315993952766 -1.2891958468196498)'::geometry as the_geom
),

impacthub_amsterdam as (
	select
		'Impacthub, Amsterdam' as venue_name,
		'SRID=4326; POINT(4.921380684793988 52.362934264543426)'::geometry as the_geom
),

all_venues as (
	select * from ihub_nairobi
	union
	select * from impacthub_amsterdam
)

select
	venue_name,
 	st_buffer(the_geom, 1)  -- 1 degree
from all_venues
