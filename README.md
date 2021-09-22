# Lab 2: Applying Indexes and SRS's to PostGIS Analyses

This lab uses three datasets:
* `septa_bus_stops` ([SEPTA GTFS](http://www3.septa.org/developer/)) – Download the zip file, upnzip it, and upload the stops.txt file. You may have to rename it to stops.csv.
* `census_block_groups` ([OpenDataPhilly](https://opendataphilly.org/dataset/census-block-groups)) – Download the 2010 block groups file as a Shapefile, as that is the most compact format available from OpenDataPhilly (even though I'm not a fan of Shapefiles).
* `census_population` ([Census Explorer](https://data.census.gov/cedsci/table?t=Populations%20and%20People&g=0500000US42101%241500000&y=2010&d=DEC%20Summary%20File%201&tid=DECENNIALSF12010.P1)) – Click the **DOWNLOAD TABLE** button, and then the **DOWNLOAD** button when prompted. Once the file is downloaded, unzip it, and open the file that starts with “DECENNIALSF12010.P1_data_with_overlays” in a text editor. Delete the first line (it should say `"GEO_ID","NAME","P001001"`) and save the file.

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
