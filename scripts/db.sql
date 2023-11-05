DROP DATABASE IF EXISTS prueba;
CREATE DATABASE prueba;
USE prueba;

CREATE TABLE persona (
   id INT(11) NOT NULL AUTO_INCREMENT,
   first VARCHAR(64),
   last VARCHAR(64),
   second VARCHAR(64),
   age INT(11),
   primary key(id)
);

INSERT INTO persona VALUES(1,'carlos','salinas','x',25);
INSERT INTO persona VALUES(2,'ernesto','zedillo','x',36);
INSERT INTO persona VALUES(3,'vicente','fox','x',19);
INSERT INTO persona VALUES(4,'felipe','caldeon','x',52);

SELECT * FROM persona;

SELECT 1;
