INSERT INTO properties (type, street_line1, street_line2, city, county, country, postcode, date_on_market, date_sold, asking_price, buyer_offer, passed_health_safety)
VALUES
('Apartment','PlazaMaior30',Null,'SantCugat','Barcelona','Spain','84824','2001-06-16','2001-12-02',420000,420000,TRUE),
('Bungalow','Graceside','MoonPass','Clonlisk','Co.Offaly','Ireland','WA142AE','2006-05-18','2006-12-16',260000,280000,TRUE),
('House','PuertaNeuva3',Null,'Laxe','ACoruna','Spain','10402','2007-07-01','2008-10-01',630000,620000,TRUE),
('Land','DomingoBeltran42',Null,'Pujerra','Malaga','Spain','98550','2012-05-19','2012-08-30',260000,260000,TRUE),
('Apartment','SiskinCedars','CherrywoodRow','Churchfield',Null,'United Kingdom','BN443SA','2014-11-22','2015-06-05',270000,280000,TRUE),
('Land','OldForgeRow','WilloughbyLake','Thershorepy',Null,'United Kingdom','L108JF','2016-02-17','2016-05-26',810000,795000,TRUE),
('Commercial','CamdenMount',Null,'NewCotra',Null,'United Kingdom','B782EW','2017-02-10','2017-11-12',140000,145000,TRUE),
('Bungalow','JordanAvenue',Null,'Lockmunds',Null,'United Kingdom','TF94PL','2017-08-17','2017-09-22',750000,750000,TRUE),
('Apartment','BaldHill','CharmingPass','Ballymackey','Co.Tipperary','Ireland','HU192BN','2020-02-04','2021-01-15',112000,115000,TRUE),
('House','NorthSt',Null,'Carrick','Co.Tipperary','Ireland','TPG4573','2020-12-22','2021-05-23',150000,140000,TRUE),
('Bungalow','Cadiz29',Null,'Almendinilla','Benalmadena','Spain','33474','2021-05-15',NULL,780000,NULL,TRUE),
('Apartment','ThornfieldGreen',Null,'Cahersiveen','Co.Kerry','Ireland','IV191NJ','2021-07-23',NULL,510000,NULL,FALSE)



INSERT INTO clients (first_name, surname, email, mobile)
VALUES
('Daniela','Publia','Daniela.Publia@gmail.com','(272)543-6572'),
('David','Bluh','David.Bluh@gmail.com','(937)471-8782'),
('Joaquin','Valerio','Joaquin.Valerio@yahoo.com','(708)339-9279'),
('Lorcan','Matthew','Lorcan.Matthew@yahoo.com','(331)338-7844'),
('Aisling','Wittie','Aisling.Wittie@gmail.com','(222)957-8069'),
('Kyle','Raychel','Kyle.Raychel@gmail.com','(224)574-1498'),
('Christopher','Constancy','Christopher.Constancy@yahoo.com','(398)573-2327'),
('Meadhbh','Sheng','Meadhbh.Sheng@gmail.com','(532)638-1700'),
('Kimberley','Noman','Kimberley.Noman@yahoo.com','(522)534-4213'),
('Sam','Lay','Sam.Lay@yahoo.com','(753)245-3260'),
('Elena','Phaidra','Elena.Phaidra@gmail.com','(453)272-1240'),
('Andrea','Chauncey','Andrea.Chauncey@yahoo.com','(570)520-5354'),
('Dylan','Uund','Dylan.Uund@gmail.com','(973)614-9086'),
('Michelle','Grobe','Michelle.Grobe@yahoo.com','(702)277-2072'),
('Alan','Even','Alan.Even@yahoo.com','(753)245-3260'),
('Jack','Munn','Jack.Munn@yahoo.com','(222)957-8069'),
('Manuel','Lail','Manuel.Lail@gmail.com','(222)957-8069'),
('Julia','Mott','Julia.Mott@gmail.com','(222)957-8069'),
('Alexa','Franza','Alexa.Franza@yahoo.com','(586)261-7852'),
('Elias','Iiette','Elias.Iiette@gmail.com','(367)293-6401')



INSERT INTO areas (area_name)
VALUES
('Carrick'),
('Kilbride'),
('Durrow'),
('Cloghane'),
('EastHampshire'),
('Warwick'),
('SouthOxfordshire'),
('Northumberland'),
('SanFernando'),
('Montilla'),
('Segovia'),
('Palencia');


INSERT INTO employees (refers_to, first_name, surname, email, mobile, hire_date, to_date, salary, country, gender)
VALUES
(5,	'Ruth',		'Euridice',	'Ruth.Euridice@myhomes.com',	'(384)219-6295',	'2018-08-03',	NULL,		38463,	'United Kingdom',	'F'),
(1,	'Sean',		'Tengdin',	'Sean.Tengdin@myhomes.com',	'(849)310-3170',	'2005-11-14',	'2016-12-31',	39998,	'Ireland',		'M'),
(4,	'Santiago',	'Fax',		'Santiago.Fax@myhomes.com',	'(466)308-7990',	'2009-12-04',	NULL,		59719,	'Spain',		'M'),
(Null,	'Valentina',	'Barbey',	'Valentina.Barbey@myhomes.com',	'(672)780-5529',	'2005-02-07',	NULL,		43538,	'Spain',		'F'),
(9,	'Hollie',	'Pascia',	'Hollie.Pascia@myhomes.com',	'(601)658-6266',	'2005-03-02',	NULL,		60161,	'Ireland',		'F'),
(3,	'Henriette',	'Kellby',	'Henriette.Kellby@myhomes.com',	'(579)755-0471',	'2015-03-17',	NULL,		41937,	'Spain',		'F'),
(9,	'Noah',		'Birdella',	'Noah.Birdella@myhomes.com',	'(664)776-9913',	'2016-02-25',	NULL,		37322,	'United Kingdom',	'M'),
(6,	'Olivia',	'Ursulette',	'Olivia.Ursulette@myhomes.com',	'(227)923-8790',	'2002-11-25',	NULL,		74122,	'United Kingdom',	'F'),
(Null,	'Gareth',	'Oriana',	'Gareth.Oriana@myhomes.com',	'(316)302-2559',	'2007-10-16',	NULL,		74431,	'Ireland',		'M'),
(5,	'Charlie',	'Noam',		'Charlie.Noam@myhomes.com',	'(515)944-7092',	'2014-04-26',	NULL,		61038,	'United Kingdom',	'M'),
(2,	'Lucy',		'Justinn',	'Lucy.Justinn@myhomes.com',	'(466)308-7990',	'2005-08-07',	NULL,		63714,	'Ireland',		'F'),
(4,	'Matias',	'Nickola',	'Matias.Nickola@myhomes.com',	'(634)708-5170',	'2001-05-17',	NULL,		35720,	'Spain',		'M'),
(3,	'Victoria',	'Serilda',	'Victoria.Serilda@myhomes.com',	'(601)658-6266',	'2007-11-03',	'2015-02-22',	40214,	'Spain',		'F'),
(6,	'Ella',		'Monk',		'Ella.Monk@myhomes.com',	'(219)689-2637',	'2016-12-08',	NULL,		45450,	'United Kingdom',	'F'),
(2,	'Emma',		'Ophelia',	'Emma.Ophelia@myhomes.com',	'(279)533-5271',	'2018-08-14',	NULL,		40851,	'Ireland',		'F'),
(1,	'Adam',		'Sherfield',	'Adam.Sherfield@myhomes.com',	'(579)755-0471',	'2010-10-18',	NULL,		43801,	'Ireland',		'M'),
(2,	'Darragh',	'Ardeha',	'Darragh.Ardeha@myhomes.com',	'(877)670-0147',	'2010-02-14',	NULL,		57486,	'Ireland',		'M'),
(1,	'Laura',	'Randene',	'Laura.Randene@myhomes.com',	'(207)538-6002',	'2008-07-28',	NULL,		39610,	'Ireland',		'F'),
(3,	'Benjamin',	'Yuille',	'Benjamin.Yuille@myhomes.com',	'(576)586-5654',	'2019-07-26',	NULL,		40572,	'Spain',		'M'),
(4,	'Ximena',	'Cohdwell',	'Ximena.Cohdwell@myhomes.com',	'(227)923-8790',	'2010-07-30',	NULL,		40543,	'Spain',		'F'),
(5,	'Willow',	'Borrell',	'Willow.Borrell@myhomes.com',	'(808)589-9964',	'2000-07-30',	NULL,		36915,	'United Kingdom',	'F'),
(9,	'Kevin',	'Penelopa',	'Kevin.Penelopa@myhomes.com',	'(601)658-6266',	'2005-05-27',	NULL,		67291,	'Ireland',		'M'),
(5,	'Thomas',	'Honoria',	'Thomas.Honoria@myhomes.com',	'(736)863-7614',	'2012-02-19',	NULL,		64967,	'United Kingdom',	'M'),
(1,	'Sophie',	'Alcott',	'Sophie.Alcott@myhomes.com',	'(563)814-1506',	'2003-10-28',	NULL,		69710,	'Ireland',		'F'),
(9,	'Harper',	'Nadia',	'Harper.Nadia@myhomes.com',	'(581)696-3660',	'2011-12-08',	NULL,		43881,	'United Kingdom',	'F'),
(6,	'Theo',		'Uird',		'Theo.Uird@myhomes.com',	'(719)496-8143',	'2005-06-03',	NULL,		37428,	'United Kingdom',	'M'),
(5,	'Joshua',	'Skurnik',	'Joshua.Skurnik@myhomes.com',	'(895)274-4034',	'2002-05-17',	NULL,		56055,	'United Kingdom',	'M'),
(6,	'Logan',	'McLaughlin',	'Logan.McLaughlin@myhomes.com',	'(563)814-1506',	'2017-08-07',	NULL,		47317,	'United Kingdom',	'M'),
(4,	'Lucas',	'Cloris',	'Lucas.Cloris@myhomes.com',	'(429)396-7714',	'2003-12-21',	NULL,		58023,	'Spain',		'M'),
(2,	'Conor',	'Yam',		'Conor.Yam@myhomes.com',	'(330)542-2424',	'2018-02-19',	NULL,		54369,	'Ireland',		'M')




INSERT INTO sales (property_id, emp_id, buyer_id, seller_id, area_id, sold_price)												
VALUES												
(	1	,	12	,	11	,	17	,	300	,	420000	),
(	2	,	16	,	9	,	8	,	102	,	280000	),
(	3	,	20	,	1	,	19	,	303	,	620000	),
(	4	,	20	,	3	,	7	,	300	,	260000	),
(	5	,	27	,	7	,	11	,	201	,	280000	),
(	6	,	8	,	20	,	17	,	203	,	795000	),
(	7	,	25	,	1	,	10	,	201	,	145000	),
(	8	,	28	,	2	,	9	,	202	,	750000	),
(	9	,	1	,	6	,	12	,	102	,	150000	),
(	10	,	24	,	19	,	11	,	101	,	140000	),
(	11	,	6	,	13	,	8	,	301	,	750000	),
(	12	,	11	,	10	,	4	,	100	,	300000	)


SELECT AVG(sold_price) FROM sales WHERE area_id = 303;
UPDATE sales SET avg_area_sales = 620000 WHERE area_id=303;

SELECT SUM(sold_price) FROM sales WHERE area_id = 202;
UPDATE sales SET total_area_sales = 750000 WHERE area_id=202;

SELECT AVG(sold_price) FROM sales WHERE area_id IN (100, 101, 102, 103);
UPDATE sales SET avg_country_sales = 217500 WHERE area_id IN (100, 101, 102, 103);

SELECT SUM(sold_price) FROM sales WHERE area_id IN (100, 101, 102, 103);
UPDATE sales SET total_country_sales = 217500 WHERE area_id IN (100, 101, 102, 103);




