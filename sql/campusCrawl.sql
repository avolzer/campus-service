DROP TABLE IF EXISTS TourStop;
DROP TABLE IF EXISTS Tour;
DROP TABLE IF EXISTS Location;

CREATE TABLE Location (
ID integer PRIMARY KEY,
name varchar(50),
latitude float,
longitude float,
description text
);

CREATE TABLE Tour (
ID integer PRIMARY KEY,
name varchar(50),
password varchar(20)
);

CREATE TABLE TourStop (
tourID integer REFERENCES Tour(ID),
locationID integer REFERENCES Location(ID),
stopNumber integer
); 

GRANT SELECT ON Location TO PUBLIC;
GRANT SELECT ON Tour TO PUBLIC;
GRANT SELECT ON TourStop TO PUBLIC;

INSERT INTO Tour VALUES (1, 'Campus Tour', 'password');

INSERT INTO Location VALUES (1, 'Covenant Fine Arts Center', 42.930540, -85.585950, 
'The CFAC serves as the host to many of Calvin’s events including the January Series and student activities. It’s also home to the English and Music departments, Center Art Gallery, Event Services, and the Calvin Box Office. The Covenant Fine Arts Center houses two large performance spaces and an art gallery.', 'https://calvin.edu/contentAsset/image/4b2bc9e2-5ca1-475e-88c9-1c7a6db5fd1e/photo2/filter/Resize,Jpeg/resize_w/690/jpeg_q/80');

INSERT INTO Location VALUES (2, 'Hekman Library', 42.929888, -85.587280, 
'The Hekman Library supports the curricular needs and scholarship of the Calvin community. It maintains a relevant and expansive collection of easily accessible resources and offers knowledgeable research assistance and instruction in a hospitable environment.', 
'https://calvin.edu/contentAsset/image/009d93b1-4381-4179-998d-53c85433c228/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80');

INSERT INTO Location VALUES (3, 'Chapel', 42.929232, -85.588334, 
'Chapel is from 10–10:20 a.m. and is held in the chapel sanctuary. It features different styles of worship, themes, and speakers each day. We have a weekly rhythm which helps shape us as a community as we dedicate ourselves to begin, believe, belong, be still, and be loud together. On Mondays we belong as one body of Christ through multicultural worship.
On Tuesdays we gather to be with each other in our work, learning, and worship.
On Wednesdays we hear the Word and believe the good news.
On Thursdays we stop to be still in the presence of God .
On Fridays we sing to be loud in praise to God.
LOFT (living our faith together) happens every Sunday evening at 8:00 p.m. We gather to dedicate our lives to Christ through praise, testimony, prayer and God’s word. Bring your friends to enjoy challenging sermons, life-giving worship and great cookies afterwards!
', 'https://calvin.edu/contentAsset/image/4e424654-8d93-4ee6-bd69-3a90cf96eacd/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80');

INSERT INTO Location VALUES (4, 'DeVries Hall', 42.930921, -85.589257, 
'DeVries Hall is home to the chemistry and biochemistry and biology departments, as well as a herbarium.', 
'https://calvin.edu/contentAsset/image/031ceeea-2337-40e7-aa14-04f14ec33d14/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80');

INSERT INTO Location VALUES (5, 'Spoelhof Fieldhouse Complex', 42.932991, -85.589091, 'Home of the Calvin Knights, the entire complex accounts for roughly 10% of the total square footage around the campus: 362,000 square feet.
The Spoelhof complex includes six classrooms, including a “wet classroom” in the pool, and is the hub to the:
Climbing Center
Hoogenboom Health & Recreation Center
Huizenga Tennis & Track Center
Morren Fitness Center
Van Noord Arena
Venema Aquatic Center',
'https://calvin.edu/contentAsset/image/fded4cb7-5350-4bfd-9706-55062850b2a3/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80');

INSERT INTO Location VALUES (6, 'Knollcrest Dining Hall', 42.933132, -85.586306, 
'Get the best all-around campus dining experience at Knollcrest Dining Hall. Our homie, spacious atmosphere is both inviting and safe for our campus community. Where students and faculty can come to escape the rigor of college life, eat fresh creative meals, and enjoy that sense of community you can only get at Knollcrest.',
'https://calvin.edu/contentAsset/image/23de6533-f827-4641-b138-91967fe128ee/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80');

INSERT INTO Location VALUES (7, 'Campus Store/Johnny\'s', 42.931050, -85.587036, 'Johnny\'s Café offers freshly made breakfast sandwiches, baked goods and a cereal bar. At lunch, the menu features daily specials, our all-American grill, homemade soups, grab-n-go sandwiches and salads, and an array of beverages and snacks. Throughout the year Johnny's offers periodic events to keep things lively. Take advantage of our later hours and feed your needs morning, noon or night, without the bother of leaving campus! Dine in the cafe at one of several tables, or take your meal to go.
Calvin's Campus Store is a great place to find all your Calvin merchandise needs. It also sells the textbooks needed for classes along with office supplies. You can even find basic necessities like toothpaste, headphones and stamps at the store.',
https://calvinchimes.org/wp-content/uploads/2014/01/johnnys-1495x1000.jpg);

INSERT INTO TourStop VALUES (1, 1, 1);
INSERT INTO TourStop VALUES (1, 2, 2);
INSERT INTO TourStop VALUES (1, 3, 3);
INSERT INTO TourStop VALUES (1, 4, 4);
INSERT INTO TourStop VALUES (1, 5, 5);
INSERT INTO TourStop VALUES (1, 6, 6);
INSERT INTO TourStop VALUES (1, 7, 7);
