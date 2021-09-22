with ihub_nairobi as (
	select
		'iHub, Nairobi' as venue_name,
		'POINT(36.78315993952766 -1.2891958468196498)'::geography as the_geog
),

impacthub_amsterdam as (
	select
		'Impacthub, Amsterdam' as venue_name,
		'POINT(4.921380684793988 52.362934264543426)'::geography as the_geog
),

all_venues as (
	select * from ihub_nairobi
	union
	select * from impacthub_amsterdam
)

select
	venue_name,
	st_buffer(the_geog, 1000000)  -- 1000 km
from all_venues
