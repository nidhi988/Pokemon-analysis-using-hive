

#creating table to hold data

CREATE TABLE pokemon(number int,name string,type1 string,type2 string,total int,HP int,attack int,defense int,sp_atk int,sp_def int,speed int)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LINES TERMINATED BY '/n'tblproperties:"skip.header.line.count'-'1);


LOAD DATA LOCAL INPATH '/home/user/pokemon.csv' INTO TABLE pokemon;

SELECT avg(HP) from pokemon;

CREATE TABLE pokemon1 as SELECT *, IF (HP>69.25,'powerful',IF (HP<69.25,'moderate','powerless'))
as power_rate from pokemon;


SELECT name,HP FROM pokemon1 order by HP desc limit 5;

SELECT name,attack from pokemon1 order by attack;


SELECT name,(attack-sp_atk) as atk_diff from pokemon order by atk_diff limit 10;


