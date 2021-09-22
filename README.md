# Lab 2: Applying Indexes and SRS's to PostGIS Analyses

Today we will do three things:
1. Discuss spatial reference systems (see the files [1](srs_01.sql), [2](srs_02.sql), and [3](srs_03.sql))
2. [Re-explain indexes](https://docs.google.com/presentation/d/1EMTzDTsSO3OP5Bwxt5UQi2OTtLRFWuC3B8_TDVtJRjE/edit?usp=sharing)
3. Practice both of these by answering the following question:

  Which bus stop has the largest population within 800 meters? As a rough estimation, consider any block group that intersects the buffer as being part of the 800 meter buffer.

  The query that provides our answer should produce a table with the following structure:

  ```sql
  (
      stop_name text, -- The name of the station
      estimated_pop_800m integer, -- The population within 800 meters
      the_geom geometry(Point, 4326) -- The geometry of the bus stop
  )
  ```

We will wrap up with a quick explanation of the upcoming assignment.
