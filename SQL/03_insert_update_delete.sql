--INSERT TO TABLE( MANUALLY ENTERING VALUES OF EACH COLUMS IN NEW ROW )
/* syntax to insert...
INSERT INTO table_name ( col1,col2,col3,..)
VALUES ( val1,val2,val2,..)   
--val match with each col.
*/
INSERT INTO customers ( id,first_name,country,score)
VALUES (6,'Gea','India',600), --added this row 
       (7, 'Ardo','USA',NULL) --added more rows there
--(8, 'usa','ayun',NULL) No error sql don't care untill you match the datatype
/*
id          first_name                                         country                                            score
----------- -------------------------------------------------- -------------------------------------------------- -----------
1           Maria                                              Germany                                            350
2            John                                              USA                                                900
3           Georg                                              UK                                                 750
4           Martin                                             Germany                                            500
5           Peter                                              USA                                                0
6           Gea                                                India                                              600
7           Ardo                                               USA                                                NULL
*/

--Also Works
INSERT INTO customers
VALUES (8,'Gealardo','India',700) --added this row 

-- can skip null only and with fist method       
INSERT INTO customers ( id,first_name)
VALUES (9,'Ayunji') --added this row 
/*
2            John                                              USA                                                900
3           Georg                                              UK                                                 750
4           Martin                                             Germany                                            500
5           Peter                                              USA                                                0
6           Gea                                                India                                              600
7           Ardo                                               USA                                                NULL
8           Gealardo                                           India                                              700

(8 rows affected)

id          first_name                                         country                                            score
----------- -------------------------------------------------- -------------------------------------------------- -----------
1           Maria                                              Germany                                            350
2            John                                              USA                                                900
3           Georg                                              UK                                                 750
4           Martin                                             Germany                                            500
5           Peter                                              USA                                                0
6           Gea                                                India                                              600
7           Ardo                                               USA                                                NULL
8           Gealardo                                           India                                              700
9           Ayunji                                             NULL                                               NULL

*/
