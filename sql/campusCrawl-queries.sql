--
-- This SQL script implements sample queries on the campusCrawl database.
--
-- @author avolzer
-- @version Fall, 2020
--

-- Get the tour records
SELECT * 
FROM Tour;

--Get the location records
SELECT * 
FROM Location;

--Get the tour stop records
SELECT * FROM TourStop;

-- Get the second tour stop name and description in Campus Tour
SELECT Location.name, Location.description 
FROM Location, Tour, TourStop
WHERE Tour.name = 'Campus Tour'
AND TourStop.TourID = Tour.ID
AND TourStop.stopNumber = 2
AND TourStop.locationID = Location.ID
;

-- Get the number of tour stops in Campus Tour
SELECT COUNT (*) 
FROM TourStop, Tour
WHERE TourStop.tourID = Tour.ID
AND Tour.name = 'Campus Tour'
;

-- Get coordinates of Campus Store
SELECT latitude, longitude
FROM Location
WHERE name = 'Campus Store'
;
