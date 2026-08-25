--DDL( Data Defining Language ) do not give result or retriving the data--
--CREATE TABLE--
-- with col id,name,DOB,phone--
CREATE TABLE person(
   id INT NOT NULL,
   person_name VARCHAR(50) NOT NULL,
   DOB DATE ,--OPTIONAL
   phone VARCHAR(50) NOT NULL,
   CONSTRAINT pk_persons PRIMARY KEY (id)
)
-- ADDING NEW COL TO PERSON TABLE
ALTER TABLE person
ADD email VARCHAR(50) NOT NULL


--REMOVING A COLUMN FROM TABLE
ALTER TABLE person
DROP COLUMN phone
SELECT * FROM person;

--DELETE PERSON TABLE FROM DATABASE
DROP TABLE person
