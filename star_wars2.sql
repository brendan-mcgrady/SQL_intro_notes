DROP TABLE characters CASCADE;
DROP TABLE lightsabers;

CREATE TABLE characters(
  id SERIAL PRIMARY KEY,
  name  VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers(
  id SERIAL PRIMARY KEY,
  hilt VARCHAR(255),
  colour VARCHAR(255),
  character_id INT8 REFERENCES characters(id)
);

INSERT INTO characters(name, darkside, age) VALUES ('Obi Wan', false, 27);
INSERT INTO characters(name, darkside, age) VALUES ('Anakin', true, 20);
INSERT INTO characters(name, darkside, age) VALUES ('Darth Maul', true, 120);
INSERT INTO characters(name, darkside, age) VALUES ('Yoda', false, 400);
INSERT INTO characters(name, darkside, age) VALUES ('Luke Skywalker', false, 17);
INSERT INTO lightsabers(hilt, colour, character_id) VALUES ('Titanium', 'Green', 4);
INSERT INTO lightsabers(hilt, colour, character_id) VALUES ('Steel', 'Blue', 1);
INSERT INTO lightsabers(hilt, colour, character_id) VALUES ('Titanium', 'Blue', 4);

SELECT * FROM characters;
SELECT * FROM lightsabers;
SELECT * FROM lightsabers WHERE character_id = 4;
