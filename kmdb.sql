-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS movies;

-- Create new tables, according to your domain model
-- TODO!

CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  movie_title TEXT,
  role TEXT
);

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  year TEXT,
  rating TEXT,
  director TEXT
);

-- Insert data into your database that reflects the sample data shown above
INSERT INTO movies (name, year, rating, director)
VALUES ("Batman Begins", "2005", "PG-13", "Christopher Nolan");
INSERT INTO movies (name, year, rating, director)
VALUES ("The Dark Knight", "2008", "PG-13", "Christopher Nolan");
INSERT INTO movies (name, year, rating, director)
VALUES ("The Dark Knight Rises", "2012", "PG-13", "Christopher Nolan");

INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Christian","Bale","Batman Begins", "Bruce Wayne");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Michael","Caine","Batman Begins", "Alfred");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Liam","Neeson","Batman Begins", "Ras Al Ghul");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Katie","Holmes","Batman Begins", "Rachel Dawes");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Gary","Oldman","Batman Begins", "Commissioner Gordon");

INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Christian","Bale","The Dark Knight", "Bruce Wayne");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Michael","Caine","The Dark Knight", "Alfred");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Heath","Ledger","The Dark Knight", "Joker");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Katie","Holmes","The Dark Knight", "Rachel Dawes");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Aaron","Eckhart","The Dark Knight", "Harvey Dent");

INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Christian","Bale","The Dark Knight Rises", "Bruce Wayne");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Tom","Hardy","The Dark Knight Rises", "Bane");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Joseph","Gordon-Levitt","The Dark Knight Rises", "John Blake");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Anne","Hathaway","The Dark Knight Rises", "Selina Kyle");
INSERT INTO actors (first_name, last_name, movie_title, role)
VALUES ("Gary","Oldman","The Dark Knight Rises", "Commissioner Gordon");


-- Use hard-coded foreign key IDs when necessary
-- TODO!

-- Prints a header for the movies output
.print "movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output
.print ""
.print "actors"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!


