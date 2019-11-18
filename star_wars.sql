DROP TABLE table_name;

CREATE TABLE table_name (
  column1 DATA_TYPE,
  column2 DATA_TYPE,
  column3 DATA_TYPE
);

-- This is the standard, basic setup for tables of data.

DROP TABLE characters;

CREATE TABLE characters(
  id SERIAL,
  name  VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

SELECT * FROM characters;

-- ^ This means select all rows

INSERT INTO characters(name, darkside, age) VALUES ('Obi Wan', false, 27);
INSERT INTO characters(name, darkside, age) VALUES ('Anakin', true, 20);
INSERT INTO characters(name, darkside, age) VALUES ('Darth Maul', true, 120);
INSERT INTO characters(name, darkside) VALUES ('Yoda', false);
INSERT INTO characters(name, darkside, age) VALUES ('Luke Skywalker', false, 17);
INSERT INTO characters(name, darkside, age) VALUES ('Rae', true, 19);
INSERT INTO characters(name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age) VALUES ('Stormtrooper', true, 25);

SELECT name FROM characters;

-- Returns all of the specified data according to name assigned to column.

SELECT COUNT(age) FROM characters;

-- Returns the count of specified data according to name assigned to column.

UPDATE characters SET darkside = false WHERE name = 'Anakin';

-- Modifies specified element.

UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin';

-- Will look for specified data - can be varchar, int or boolean

UPDATE characters SET age = 65 WHERE age = 27;
UPDATE characters SET age = 29 WHERE id = 3;

-- Modifies specified element according to element's id.

DELETE FROM characters WHERE name = 'Obi Wan';
DELETE FROM characters WHERE name = 'Rae';

SELECT * FROM characters;
