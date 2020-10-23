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

INSERT INTO Location VALUES (1, 'Covenant Fine Arts Center', 42.930540, -85.585950, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

INSERT INTO Location VALUES (2, 'Hekman Library', 42.929888, -85.587280, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

INSERT INTO Location VALUES (3, 'Chapel', 42.929232, -85.588334, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

INSERT INTO Location VALUES (4, 'DeVries Hall', 42.930921, -85.589257, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

INSERT INTO Location VALUES (5, 'Spoelhof Fieldhouse Complex', 42.932991, -85.589091, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

INSERT INTO Location VALUES (6, 'Knollcrest Dining Hall', 42.933132, -85.586306, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

INSERT INTO Location VALUES (7, 'Campus Store', 42.931050, -85.587036, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

INSERT INTO TourStop VALUES (1, 1, 1);
INSERT INTO TourStop VALUES (1, 2, 2);
INSERT INTO TourStop VALUES (1, 3, 3);
INSERT INTO TourStop VALUES (1, 4, 4);
INSERT INTO TourStop VALUES (1, 5, 5);
INSERT INTO TourStop VALUES (1, 6, 6);
INSERT INTO TourStop VALUES (1, 7, 7);
