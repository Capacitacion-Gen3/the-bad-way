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

INSERT INTO persona VALUES(1,'carlos','salinas','rosas',25);
INSERT INTO persona VALUES(2,'ernesto','zedillo','lópez',36);
INSERT INTO persona VALUES(3,'vicente','fox','pérez',19);
INSERT INTO persona VALUES(4,'felipe','caldeon','zedillo',52);

SELECT * FROM persona;

SELECT 1;
