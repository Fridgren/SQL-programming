
--student tabellen 
CREATE TABLE student(

first_name VARCHAR(50)    NOT NULL,
last_name  VARCHAR(50)    NOT NULL,
email      VARCHAR(60)        NULL,
street     VARCHAR(50)    NOT NULL,
city       VARCHAR(50)    NOT NULL DEFAULT "Stockholm",
phone      VARCHAR(20)    NOT NULL,
birth_date DATE           NOT NULL,
sex        ENUM('M', 'K') NOT NULL,
date_entered TIMESTAMP,
student_id INT UNSIGNED   NOT NULL AUTO_INCREMENT PRIMARY KEY

);

-- class tabellen
CREATE TABLE class(

name     VARCHAR(50)   NOT NULL,
class_id INT UNSIGNED  NOT NULL AUTO_INCREMENT PRIMARY KEY);

-- test tabellen
CREATE TABLE test(

date     DATE            NOT NULL,
type     ENUM('T', 'Q')  NOT NULL,
class_id INT UNSIGNED    NOT NULL,
test_id  INT UNSIGNED    NOT NULL AUTO_INCREMENT PRIMARY KEY

);

--  score tabellen
CREATE TABLE score(

student_id  INT UNSIGNED NOT NULL,
event_id    INT UNSIGNED NOT NULL,
score       INT          NOT NULL,
PRIMARY KEY(event_id, student_id)
);
    
-- absence tabellen
CREATE TABLE absence(
student_id  INT UNSIGNED NOT NULL,
date        DATE         NOT NULL,
PRIMARY KEY(student_id, date)
   
);


