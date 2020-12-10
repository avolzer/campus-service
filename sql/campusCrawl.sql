DROP TABLE IF EXISTS TourStop;
DROP TABLE IF EXISTS Tour;
DROP TABLE IF EXISTS Location;

CREATE TABLE Location (
ID integer PRIMARY KEY,
name varchar(50),
latitude float,
longitude float,
description text,
greeting text,
image text
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
'<div style="padding-left: 20px; padding-right: 20px">
<p>The CFAC serves as the host to many of Calvin’s events including the January Series and student activities. It’s also home to the English and Music departments, Center Art Gallery, Event Services, and the Calvin Box Office. The Covenant Fine Arts Center houses two large performance spaces and an art gallery.</p>

<img src="https://calvin.edu/contentAsset/image/4b2bc9e2-5ca1-475e-88c9-1c7a6db5fd1e/photo1/filter/Resize,Jpeg/resize_w/600/jpeg_q/80" width="350" style="padding: 10px;">
<p>
Welcome to the Covenant Fine Arts Center, which we call the CFAC for short! Keep scrolling to explore.</p>

<p>
<img src="https://wp.rockfordconstruction.com/wp-content/uploads/2019/01/GRCHS_04-1-1920x720.jpg" width="350" style="padding: 10px;">
As you enter, you’ll see the box office straight ahead, behind the giant rock. Here you can buy tickets for events such as shows, outings, and cultural events. The Student Activities Office (SAO) organizes concerts and movies that are free or cheap for Calvin students. The artists we’ve hosted include fun., Sigrid, John Mark McMillan, and Julien Baker. There’s usually a q&a/discussion session afterward to interact with the artist and learn more about them. SAO is focused on the intersection between faith and popular culture.
</p>
<p>
One of the largest and most popular traditions at Calvin is Rangeela. This student-run event showcases dances, music, and skits from cultures around the world.
You can also catch performances from one of our choirs or instrumental groups. Our vocal groups are women’s choral, gospel choir, campus choir, and capella. For instrumental groups, there’s orchestra, wind ensemble, jazz band, and symphonic band. There are two performance venues in the CFAC, pictured below      
</p>
<p>
<img src="https://wp.rockfordconstruction.com/wp-content/uploads/2019/01/GRCHS_07-1-1920x1080.jpg" width="350" style="padding: 10px;">
<img src="https://calvin.edu/contentAsset/raw-data/54805707-0be4-498b-ba84-9abbeb5cf115/bannerImage" width="350" style="padding: 10px;">
</p>
<p>
To your left, you’ll see the Center Art Gallery which showcases a wide range of temporary exhibitions including loan exhibitions and artwork from Calvin students, faculty, and alumni.
<img src="https://calvin.edu/contentAsset/raw-data/770c5768-2778-4801-b96f-d242f3bf6624/bannerImage" width="350" style="padding: 10px;">
</p>
<p>
If you take any music or English classes during your time here, you’ll probably find yourself in a CFAC classroom.
</p>
</div>
', 'Welcome to the CFAC', 'https://calvin.edu/contentAsset/image/4b2bc9e2-5ca1-475e-88c9-1c7a6db5fd1e/photo2/filter/Resize,Jpeg/resize_w/690/jpeg_q/80'
);

INSERT INTO Location VALUES (2, 'Hekman Library', 42.929888, -85.587280, 
'
<div style="padding-left: 20px; padding-right: 20px">
<p>
The Hekman Library supports the curricular needs and scholarship of the Calvin community. It maintains a relevant and expansive collection of easily accessible resources and offers knowledgeable research assistance and instruction in a hospitable environment.
</p>
<p>
Welcome to the library! If you’re the kind of person who likes a peaceful environment to study, this is the place for you. You can also find research help for any papers you’re writing, by visiting the Research Assistance Desk or making an appointment with one of our research librarians. The main floor here, which is actually floor 2, is the more social area. 
</p>
<img src="https://calvin.edu/contentAsset/raw-data/5950dab5-af32-4556-b90b-41d56b727d39/bannerImage" width="350" style="padding: 10px;">
<p>
Peet’s is a great place to grab a coffee and catch up with a friend. It’s also one of the newest additions to campus. 
</p>
<p>
On this floor talking is acceptable, so a lot of people come here to work on group projects, although there are also group study rooms on other floors. The main areas of the other floors are silent zones, so head to floors 3-5 if you need a quiet place to concentrate on that big paper that’s due tomorrow. 
</p>
<img src="https://pbs.twimg.com/media/Ds9VFrsWoAEkaO6.jpg" width="350" style="padding: 10px;">
<p>
The second floor is also home to the Rhetoric Center (pictured above), which offers resources and help sessions for academic writing. It is staffed by Calvin students who specialize in all different fields, so if you enjoy writing and helping others it could be a great job opportunity too. 
</p>
<p>
Library materials housed on this floor include the Cayvan Recorded Media Collection, which stores the library’s audio and visual media, and Heritage Hall which is the official archive of Calvin University, Calvin Seminary, and the Christian Reformed Church in North America.
</p>
<img src="https://miro.medium.com/max/700/1*4ieHnwXDJso0yCDC2q-_jg.jpeg" width="350" style="padding: 10px;">

<p>
On the 4th floor, you can find the H. Henry Meeter Center for Calvin Studies (above), a research center that holds one of the world’s largest collections of materials on John Calvin, Calvinism, the Reformation, and Early Modern Studies. You can visit the Meeter Center from 8-5 on weekdays to explore these resources or talk to the personnel.
</p>
<p>
The first floor is home to the Calvin CIT helpdesk, where you can get support for your personal devices. It is open 8-5 on weekdays.
</p>
</div>
', 'Welcome to the Hekman Library',
'https://calvin.edu/contentAsset/image/009d93b1-4381-4179-998d-53c85433c228/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80'
);

INSERT INTO Location VALUES (3, 'Chapel', 42.929232, -85.588334, 
'
<div style="padding-left: 20px; padding-right: 20px">
<p>
Chapel is from 10–10:20 a.m. and is held in the chapel sanctuary. It features different styles of worship, themes, and speakers each day. We have a weekly rhythm which helps shape us as a community as we dedicate ourselves to begin, believe, belong, be still, and be loud together. 
</p>
<p>
On Mondays we belong as one body of Christ through multicultural worship.
On Tuesdays we gather to be with each other in our work, learning, and worship.
On Wednesdays we hear the Word and believe the good news.
On Thursdays we stop to be still in the presence of God .
On Fridays we sing to be loud in praise to God.
LOFT (living our faith together) happens every Sunday evening at 8:00 p.m. We gather to dedicate our lives to Christ through praise, testimony, prayer and God’s word. Bring your friends to enjoy challenging sermons, life-giving worship and great cookies afterwards!
</p>
<img src="https://pipeorgandatabase.org/static/organ_images/MI/GrandRapids.CalvinCollege.1989Dobson.Boorsma03.jpg" width="350" style="padding: 10px;">
</div>', 'Welcome to the Chapel', 'https://calvin.edu/contentAsset/image/4e424654-8d93-4ee6-bd69-3a90cf96eacd/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80'
);

INSERT INTO Location VALUES (4, 'DeVries Hall', 42.930921, -85.589257, 
'
<div style="padding-left: 20px; padding-right: 20px">
<p>
DeVries Hall is home to the chemistry and biochemistry and biology departments, as well as a herbarium.
</p>
<p>
As you enter, you’ll see a beautiful open area full of plants, chairs, and tables. This is a great and relaxing study spot.

</p>
<p>
Devries Hall, the science building, and North Hall are all connected and hold many science classes, as well as professors’ offices. The connection between students and professors is very important to us here at Calvin, so there are generally small class sizes and many opportunities to get to know your professors.
</p>
<img src="https://calvin.edu/contentAsset/raw-data/45672f7a-4669-4b96-a753-7a105860633d/bannerImage" width="350" style="padding: 10px;">

<p>
North Hall also houses the Bruce Dice Mineralogical Museum, which has 300+
unique mineral and fossil specimens. The hours are Wednesday, Thursday, and Friday
12:30 p.m. – 4:00 p.m.. There are lots of cool specimens, so be sure to check it out!
</p>

<img src="https://calvin.edu/contentAsset/raw-data/4d15801d-2a76-456c-93c3-e89d5abd855c/bannerImage" width="350" style="padding: 10px;">
<p>
Another cool spot in this building is Calvin’s observatory on the top floor. The observatory contains two telescopes which are accessible to our students and professors. Our student observers work directly with the telescopes, our astronomy students take pictures of celestial bodies, and our researchers gather data to support their projects. On clear nights, it is open to the public.
</p>
</div>', 'Welcome to DeVries Hall',
'https://calvin.edu/contentAsset/image/031ceeea-2337-40e7-aa14-04f14ec33d14/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80'
);

INSERT INTO Location VALUES (5, 'Spoelhof Fieldhouse Complex', 42.932991, -85.589091,
'<div style="padding-left: 20px; padding-right: 20px">
<p>
Home of the Calvin Knights, the entire complex accounts for roughly 10% of the total square footage around the campus: 362,000 square feet.
</p>
<p>
Right when you enter, you’ll see the Climbing Center where you can rock climb to your heart’s content. 
</p>
<img src="https://calvin.edu/contentAsset/image/e003b2f7-0edc-4c20-b1a3-ef677a3f54d5/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80" width="350" style="padding: 10px;">

<p>
To the right of the entrance, is the entrance for our public gym, the Morren Fitness Center. All students can work out here for free and it has all the fitness equipment you need for a complete workout. 
</p>

<img src="https://calvin.edu/contentAsset/image/509d91c2-50e2-4d4e-a8df-44e7155e871c/photo1/filter/Resize,Jpeg/resize_w/690/jpeg_q/80" width="350" style="padding: 10px;">

<p>
If you are looking for not for machines, but instead, a track. Going further through the Fieldhouse, you’ll find Calvin’s Huizenga Tennis & Track center, which has  indoor tennis courts and a track. 
</p>

<img src="https://calvin.edu/contentAsset/image/3b985ba9-d518-49f9-b61b-0d8fb52c940a/photo3/filter/Resize,Jpeg/resize_w/690/jpeg_q/80" width="350" style="padding: 10px;">

<p>
The fieldhouse is where all the athletics events happen like volleyball and basketball games, swim meets, and sporting events like MidKnight Madness. MidKnight Madness is an event that provides endless fun. You can win prizes, dress up in costumes, get popcorn buckets and Calvin brand T-shirts.
</p>
<p>
The competitive sporting events like our women’s volleyball games are a great place to show school pride and dress up in school colors. It is a very active atmosphere of adrenaline and cheering. 
</p>

<img src="https://calvin.edu/contentAsset/raw-data/0d6d514d-4785-472f-a76e-c448a97cf0f1/bannerImage" width="350" style="padding: 10px;">

<p>
The Spoelhof complex includes six classrooms, including a “wet classroom” in the pool. The
Venema Aquatic Center is home to our swim team as well as a place for recreational swimming. 
</p>

<img src="https://scontent-atl3-2.xx.fbcdn.net/v/t1.0-9/120202940_10158048945073462_7404752794114199353_o.jpg?_nc_cat=103&ccb=2&_nc_sid=730e14&_nc_ohc=h0W7x8qHlnQAX_8x693&_nc_ht=scontent-atl3-2.xx&oh=9aed07aa1e15ba8ab828f64c76bd9723&oe=5FF77108" width="350" style="padding: 10px;">

<p>
Going inside, you’ll find more indoor basketball courts with a lounge area. This is also a great place to study
</p>

<img src="https://calvinchimes.org/wp-content/uploads/2017/02/heath_services.jpg" width="350" style="padding: 10px;">

<p>
Attached to the side of the Fieldhouse, is Hoogenboom health services. You can get a check up, your own diet plan from Calvin’s dietician, and many more of your health needs.  
</p>
</div>
', 'Welcome to the Spoelhof Fieldhouse Complex',
'https://calvin.edu/contentAsset/image/fded4cb7-5350-4bfd-9706-55062850b2a3/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80'
);

INSERT INTO Location VALUES (6, 'Knollcrest Dining Hall', 42.933132, -85.586306, 
'
<div style="padding-left: 20px; padding-right: 20px">
<p>
Get the best all-around campus dining experience at Knollcrest Dining Hall. Our homie, spacious atmosphere is both inviting and safe for our campus community. Where students and faculty can come to escape the rigor of college life, eat fresh creative meals, and enjoy that sense of community you can only get at Knollcrest.
</p>
<img src="https://calvin.edu/contentAsset/image/98754de4-1ac1-4965-86ee-8c1981258db8/photo3/filter/Resize,Jpeg/resize_w/690/jpeg_q/80" width="350" style="padding: 10px;">

<p>
This is the larger dining hall out of the two on campus. It provides a lot of different stations: a sandwich bar, a gluten free station, a cultural station, where they serve food like tacos to asian. It is a great place to get food or snacks, because Knollcrest also has a breakfast station that has cereal and milk, waffles, bagels, toast, and all the spreads you need.
</p>
</div>', 'Welcome to Knollcrest Dining Hall',
'https://calvin.edu/contentAsset/image/23de6533-f827-4641-b138-91967fe128ee/bannerImage/filter/Resize,Jpeg/resize_w/720/jpeg_q/80'
);

INSERT INTO Location VALUES (7, 'Campus Store/Johnny’s', 42.931050, -85.587036, 
'<div style="padding-left: 20px; padding-right: 20px">
<p>
Johnny’s Café offers freshly made breakfast sandwiches, baked goods and a cereal bar. At lunch, the menu features daily specials, our all-American grill, homemade soups, grab-n-go sandwiches and salads, and an array of beverages and snacks. Throughout the year Johnny’s offers periodic events to keep things lively. Take advantage of our later hours and feed your needs morning, noon or night, without the bother of leaving campus! Dine in at the cafe at one of several tables, or take your meal to go.
</p>
<p>
This is the main hang out spot on campus. This offers ambiance for students who prefer to study with a little bit of background noise, or if you just want to hang out with your friends, or if you just wanna snack. Johnny’s offers great variety for your cravings whenever you need from a full sized meal to little snacks, plus it’s a great place for you to run into people.
</p>
<img src="https://scontent-atl3-2.xx.fbcdn.net/v/t31.0-8/14053683_1155441237846547_760334803678373547_o.jpg?_nc_cat=103&ccb=2&_nc_sid=e3f864&_nc_ohc=CbjUTdAjk-sAX-n_uDz&_nc_ht=scontent-atl3-2.xx&oh=633427637f7debef8d675bacd54e047a&oe=5FF76A9D" width="350" style="padding: 10px;">

<p>
If you get tired of spending money on food, you can head to the campus store to spend money on clothes, books, or more snacks. The Calvin’s Campus Store is a great place to find all your Calvin merchandise needs. Grab some bright maroon and yellow colored shirts, socks, scarves, and more. If you ever are missing school items, this store has all the necessities like folders, binders, notebooks, planners, writing equipment, backpacks, organizers, etc.. They also provide other necessities like toothpaste, headphones and stamps. The campus store is also where you can grab books for your classes. Here they price match, so you can find a cheaper price for your books online (like on chegg or amazon) and the campus store will price match that for you. This is a simpler way to get and return books.
</p>
</div>
', 'Welcome to Johnny’s and the campus store',
'https://calvinchimes.org/wp-content/uploads/2014/01/johnnys-1495x1000.jpg'
);

INSERT INTO TourStop VALUES (1, 1, 1);
INSERT INTO TourStop VALUES (1, 2, 2);
INSERT INTO TourStop VALUES (1, 3, 3);
INSERT INTO TourStop VALUES (1, 4, 4);
INSERT INTO TourStop VALUES (1, 5, 5);
INSERT INTO TourStop VALUES (1, 6, 6);
INSERT INTO TourStop VALUES (1, 7, 7);
