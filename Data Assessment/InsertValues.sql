EMP_ADDRESSES
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO emp_addresses (address_id, street_line1, city, country, postcode)
VALUES
(6, '8 Grange Rd', 'Blackpool', 'United Kingdom', 'FY44 3QZ'),
(7, '65 George St', 'Dudley', 'United Kingdom', 'DY38 7BF'),
(8, '808 The Grove', 'Telford', 'United Kingdom', 'TF0 3AU'),
(10, '126 North St', 'Glasgow', 'United Kingdom', 'G94 4DJ');


INSERT INTO emp_addresses (address_id, street_line1, street_line2, city, county, country, postcode)
VALUES
(1, '2 William St', 	'N/A',	 	'Listowel', 	'Co. Kerry', 		'Ireland', 'KYD 1235'),
(2, '40 Esmondale', 	'Kilcullen Rd', 'Naas', 	'Co. Kildare',		'Ireland', 'KEH 3595'),
(3, 'Sion Hill', 	'N/A', 		'Killucan', 	'Co. Weathmeath', 	'Ireland', 'WHM 8356'),
(4, 'Main St',		'Naas Rd', 	'Prosperous', 	'Co. Kildare', 		'Ireland', 'KEG 4629'),
(5, '5 Smith Rd', 	'N/A', 		'Kilkee', 	'Co. Clare',		'Ireland', 'CEJ 3574'),
(9, '91 Park Lane', 	'The Strand',	'Ipswich', 	'N/A', 			'United Kingdom', 'IP87 4MG'),
(11, 'Calvo Sotelo 73',	'N/A', 		'Carpio', 	'Valladolid', 		'Spain', '47470'),
(12, 'Benito Guinea 89',  'N/A', 	'Santpedor', 	'Barcelona', 		'Spain', '08251'),
(13, 'Puerta Nueva 32',   'N/A',	'Ponte-caldelas', 'Las Palmas', 	'Spain', '35820'),
(14, 'Manuel Iradier 34', 'N/A',	'Tollos', 	'Alicante', 		'Spain', '03813'),
(15, 'Plaza de España 45','N/A', 	'O Pino', 	'A Coruña', 		'Spain', '15821');

AREAS
-------------------------------------------------------------------------------------------------------
INSERT INTO areas (area_id, area_name) VALUES
(100, 'Carrick'),
(101, 'Kilbride'),
(102, 'Durrow'),
(103, 'Cloghane'),
(200, 'East Hampshire'),
(201, 'Warwick'),
(202, 'South Oxfordshire'),
(203, 'Northumberland'),
(300, 'San Fernando'),
(301, 'Montilla'),
(302, 'Segovia'),
(303, 'Palencia');


EMPLOYEES
-------------------------------------------------------------------------------------------------------
INSERT INTO employees ( emp_id, first_name, surname, address_id, email, mobile, hire_date, to_date, salary)
VALUES

( 2, 	'Sean',		'Tengdin',	4,	'Sean.Tengdin@myhomes.com',	'(849) 310-3170', '2005-11-14', '2016-12-31', 39998 ),
( 13,	'Victoria',	'Serilda',	13,	'Victoria.Serilda@myhomes.com',	'(601) 658-6266', '2007-11-03', '2015-02-22', 40214 );


INSERT INTO employees ( emp_id, first_name, surname, address_id, email, mobile, hire_date, salary)
VALUES

( 3, 	'Santiago',	'Fax',		11,	'Santiago.Fax@myhomes.com',	'(466) 308-7990', '2009-12-04', 59719 ),
( 4, 	'Valentina',	'Barbey',	15,	'Valentina.Barbey@myhomes.com',	'(672) 780-5529', '2005-02-07', 43538 ),
( 5, 	'Hollie',	'Pascia',	2,	'Hollie.Pascia@myhomes.com',	'(601) 658-6266', '2005-03-02', 60161 ),
( 7, 	'Noah',		'Birdella',	7,	'Noah.Birdella@myhomes.com',	'(664) 776-9913', '2016-02-25', 37322 ),
( 9, 	'Gareth',	'Oriana',	4,	'Gareth.Oriana@myhomes.com',	'(316) 302-2559', '2007-10-16', 74431 ),
( 10,	'Charlie',	'Noam',		7,	'Charlie.Noam@myhomes.com',	'(515) 944-7092', '2014-04-26', 61038 ),
( 14,	'Ella',		'Monk',		7,	'Ella.Monk@myhomes.com',	'(219) 689-2637', '2016-12-08', 45450 ),
( 15,	'Emma',		'Ophelia',	1,	'Emma.Ophelia@myhomes.com',	'(279) 533-5271', '2018-08-14', 40851 ),
( 17,	'Darragh',	'Ardeha',	2,	'Darragh.Ardeha@myhomes.com',	'(877) 670-0147', '2010-02-14', 57486 ),
( 18,	'Laura',	'Randene',	5,	'Laura.Randene@myhomes.com',	'(207) 538-6002', '2008-07-28', 39610 ),
( 19,	'Benjamin',	'Yuille',	12,	'Benjamin.Yuille@myhomes.com',	'(576) 586-5654', '2019-07-26', 40572 ),
( 21,	'Willow',	'Borrell',	10,	'Willow.Borrell@myhomes.com',	'(808) 589-9964', '2000-07-30', 36915 ),
( 22,	'Kevin',	'Penelopa',	2,	'Kevin.Penelopa@myhomes.com',	'(601) 658-6266', '2005-05-27', 67291 ),
( 23,	'Thomas',	'Honoria',	6,	'Thomas.Honoria@myhomes.com',	'(736) 863-7614', '2012-02-19', 64967 ),
( 26,	'Theo',		'Uird',		8,	'Theo.Uird@myhomes.com',	'(719) 496-8143', '2005-06-03', 37428 ),
( 29,	'Lucas',	'Cloris',	15,	'Lucas.Cloris@myhomes.com',	'(429) 396-7714', '2003-12-21', 58023 ),
( 30,	'Conor',	'Yam',		1,	'Conor.Yam@myhomes.com',	'(330) 542-2424', '2018-02-19', 54369 ),
( 16,	'Adam',		'Sherfield',	2,	'Adam.Sherfield@myhomes.com',	'(579) 755-0471', '2010-10-18', 43801 ),
( 1, 	'Ruth',		'Euridice',	7,	'Ruth.Euridice@myhomes.com',	'(384) 219-6295', '2018-08-03', 38463 ),
( 11,	'Lucy',		'Justinn',	1,	'Lucy.Justinn@myhomes.com',	'(466) 308-7990', '2005-08-07', 63714 ),
( 12,	'Matias',	'Nickola',	14,	'Matias.Nickola@myhomes.com',	'(634) 708-5170', '2001-05-17', 35720 ),
( 8, 	'Olivia',	'Ursulette',	7,	'Olivia.Ursulette@myhomes.com',	'(227) 923-8790', '2002-11-25', 74122 ),
( 6, 	'Henriette',	'Kellby',	13,	'Henriette.Kellby@myhomes.com',	'(579) 755-0471', '2015-03-17', 41937 ),
( 27,	'Joshua',	'Skurnik',	8,	'Joshua.Skurnik@myhomes.com',	'(895) 274-4034', '2002-05-17', 56055 ),
( 28,	'Logan',	'McLaughlin',	9,	'Logan.McLaughlin@myhomes.com',	'(563) 814-1506', '2017-08-07', 47317 ),
( 24,	'Sophie',	'Alcott',	1,	'Sophie.Alcott@myhomes.com',	'(563) 814-1506', '2003-10-28', 69710 ),
( 25,	'Harper',	'Nadia',	6,	'Harper.Nadia@myhomes.com',	'(581) 696-3660', '2011-12-08', 43881 ),
( 20,	'Ximena',	'Cohdwell',	11,	'Ximena.Cohdwell@myhomes.com',	'(227) 923-8790', '2010-07-30', 40543 );












CLIENTS
-------------------------------------------------------------------------------------------------------
INSERT INTO clients ( client_id, first_name, surname, email, mobile) 
VALUES
( 1,'Daniela','Publia','Daniela.Publia@gmail.com','(272) 543-6572' ),
( 2,'David','Bluh','David.Bluh@gmail.com','(937) 471-8782' ),
( 3,'Joaquin','Valerio','Joaquin.Valerio@yahoo.com','(708) 339-9279' ),
( 4,'Lorcan','Matthew','Lorcan.Matthew@yahoo.com','(331) 338-7844' ),
( 5,'Aisling','Wittie','Aisling.Wittie@gmail.com','(222) 957-8069' ),
( 6,'Kyle','Raychel','Kyle.Raychel@gmail.com','(224) 574-1498' ),
( 7,'Christopher','Constancy','Christopher.Constancy@yahoo.com','(398) 573-2327' ),
( 8,'Meadhbh','Sheng','Meadhbh.Sheng@gmail.com','(532) 638-1700' ),
( 9,'Kimberley','Noman','Kimberley.Noman@yahoo.com','(522) 534-4213' ),
( 10,'Sam','Lay','Sam.Lay@yahoo.com','(753) 245-3260' ),
( 11,'Elena','Phaidra','Elena.Phaidra@gmail.com','(453) 272-1240' ),
( 12,'Andrea','Chauncey','Andrea.Chauncey@yahoo.com','(570) 520-5354' ),
( 13,'Dylan','Uund','Dylan.Uund@gmail.com','(973) 614-9086' ),
( 14,'Michelle','Grobe','Michelle.Grobe@yahoo.com','(702) 277-2072' ),
( 15,'Alan','Even','Alan.Even@yahoo.com','(753) 245-3260' ),
( 16,'Jack','Munn','Jack.Munn@yahoo.com','(222) 957-8069' ),
( 17,'Manuel','Lail','Manuel.Lail@gmail.com','(222) 957-8069' ),
( 18,'Julia','Mott','Julia.Mott@gmail.com','(222) 957-8069' ),
( 19,'Alexa','Franza','Alexa.Franza@yahoo.com','(586) 261-7852' ),
( 20,'Elias','Iiette','Elias.Iiette@gmail.com','(367) 293-6401' );


PROPERTY_TYPES
-------------------------------------------------------------------------------------------------------
INSERT INTO property_types VALUES
(1, 'House'),
(2, 'Apartment'),
(3, 'Bungalow'),
(4, 'Land'),
(5, 'Commercial');


PROPERTY_LOCATIONS
-------------------------------------------------------------------------------------------------------
INSERT INTO property_locations (location_id, area_id, street_line1, street_line2, city, county, country, postcode)
VALUES
(1, 100, 'North St', 		'N/A', 'Carrick', 'Co. Tipperary', 'Ireland', 'TPG 4573'),
(2, 100, 'Bald Hill', 		'Charming Pass', 'Ballymackey', 'Co. Tipperary', 'Ireland', 'HU19 2BN'),
(3, 101, 'Red Brick St',	'N/A', 'Blessington', 'Co. Wicklow', 'Ireland', 'LD4 4EP'),
(4, 101, 'Narrow Road', 	'N/A', 'Manor Kilbride', 'Co. Wicklow', 'Ireland', 'IG5 0JQ'),
(5, 102, 'Graceside', 		'Moon Pass', 'Clonlisk', 'Co. Offaly',  'Ireland', 'WA14 2AE'),
(6, 102, 'Bell Green', 		'Etive Gardens', 'Garrycastle', 'Co. Offaly', 'Ireland', 'CA3 9JZ'),
(7, 103, 'Thornfield Green', 	'N/A', 'Cahersiveen', 'Co. Kerry', 'Ireland', 'IV19 1NJ'),
(8, 103, 'Granby Ridge', 	'Valley Estate', 'Dingle', 'Co. Kerry', 'Ireland', 'KW12 6XJ'),
(17, 300, 'Carretera 24', 	'N/A', 'Sant Lluís', 'Córdoba', 'Spain', '97753'),
(18, 300, 'Cádiz 29', 		'N/A', 'Almedinilla', 'Benalmádena', 'Spain', '33474'),
(19, 301, 'Carretera del Muelle', 'N/A', 'Vianos', 'Málaga', 'Spain', '53291'),
(20, 301, 'Plaza Maior 30',	'N/A', 'Sant Cugat', 'Barcelona', 'Spain', '84824'),
(21, 302, 'Avda. Generalísimo', 'N/A', 'Cuevas Del Campo', 'Granada', 'Spain', '84827'),
(22, 302, 'Puerta Nueva 3', 	'N/A', 'Laxe', 'A Coruña', 'Spain', '10402'),
(23, 303, 'Domingo Beltrán 42', 'N/A', 'Pujerra', 'Málaga', 'Spain', '98550'),
(24, 303, 'Canónigo Valiño 15', 'N/A', 'Arona', 'Navarre', 'Spain', '20109');
 
INSERT INTO property_locations (location_id, area_id, street_line1, street_line2, city, country, postcode)
VALUES
 (9, 200, 'St Mark Gait', 'N/A', 'Shower', 'United Kingdom', 'NR1 3LT'),
(10, 200, 'Jordan Avenue', 'St Marks Rise', 'Lockmunds', 'United Kingdom', 'TF9 4PL'),
(11, 201, 'Admirals Lodge', 'N/A', 'Thameswy', 'United Kingdom', 'GL51 7SH'),
(12, 201, 'London Square', 'Highfield', 'Ulwith', 'United Kingdom', 'EN9 3BW'),
(13, 202, 'Camden Mount', 'N/A', 'New Cotra', 'United Kingdom', 'B78 2EW'),
(14, 202, 'Arden Springs', 'N/A', 'Moin', 'United Kingdom', 'HG5 0PZ'),
(15, 203, 'Old Forge Row', 'Willoughby Lake', 'Thershorepy', 'United Kingdom', 'L10 8JF'),
(16, 203, 'Siskin Cedars', 'Cherrywood Row', 'Churchfield', 'United Kingdom', 'BN44 3SA');


PROPERTIES
-------------------------------------------------------------------------------------------------------
INSERT INTO properties ( property_id, property_type, emp_id, location_id, client_id, date_on_market, date_sold, asking_price, buyer_offer, selling_price, passed_health_safety)
VALUES 

( 100, 2, 12, 20, 13, '2001-06-16','2001-12-02', 420000, 420000, 420000, True),
( 101, 3, 16, 5, 4, '2006-05-18','2006-12-16', 260000, 280000, 280000, True),
( 102, 1, 20, 22, 2, '2007-07-01','2008-10-01', 630000, 620000, 620000, True),
( 103, 4, 20, 23, 7, '2012-05-19','2012-08-30', 260000, 260000, 260000, True),
( 104, 2, 27, 16, 20, '2014-11-22','2015-06-05', 270000, 280000, 280000, True),
( 105, 4, 8,  16, 13, '2016-02-17','2016-05-26', 810000, 795000, 795000, True),
( 106, 5, 25, 13, 1, '2017-02-10','2017-11-12', 140000, 145000, 145000, True),
( 107, 3, 28, 10, 8, '2017-08-17','2017-09-22', 750000, 750000, 750000, True),
( 108, 2, 1,  9, 10, '2020-02-04','2021-01-15', 112000, 115000, 115000, True),
( 109, 1, 24, 1, 1, '2020-12-22','2021-05-23', 150000, 140000, 140000, True);

INSERT INTO properties ( property_id, property_type, emp_id, location_id, client_id, date_on_market, asking_price, passed_health_safety)
VALUES 
( 110, 3, 6, 18, 19,'2021-05-15', 780000, True),
( 111, 2, 11, 7, 18,'2021-07-23', 510000, False);


MANAGEMENT
-------------------------------------------------------------------------------------------------------
INSERT INTO management VALUES (1);


CHIEFS
-------------------------------------------------------------------------------------------------------
INSERT INTO chiefs VALUES
(1, 4, 1),
(2, 9, 1);


SUPERVISORS
-------------------------------------------------------------------------------------------------------
INSERT INTO supervisors VALUES
(1, 5, 2),
(2, 22, 2),
(3, 3, 1),
(4, 20, 1),
(5, 7, 2),
(6, 25, 2);


SALES_REPS
-------------------------------------------------------------------------------------------------------
INSERT INTO sales_reps (rep_id, emp_id, super_id)
VALUES
(1, 1, 5),
(2, 2, 1),
(3, 6, 3),
(4, 8, 6),
(5, 10, 5),
(6, 11, 2),
(7, 12, 4),
(8, 13, 3),
(9, 14, 6),
(10, 15, 2),
(11, 16, 1),
(12, 17, 2),
(13, 18, 1),
(14, 19, 3),
(15, 21, 5),
(16, 23, 5),
(17, 24, 1),
(18, 26, 6),
(19, 27, 5),
(20, 28, 6),
(21, 29, 4),
(22, 30, 2);



EMP_AREAS
-------------------------------------------------------------------------------------------------------
INSERT INTO emp_areas VALUES
(1, 200),
(2, 101),
(3, 300),
(3, 301),
(4, 300),
(4, 303),
(4, 302),
(4, 301),
(5, 102),
(5, 101),
(6, 300),
(7, 201),
(7, 200),
(8, 203),
(8, 201),
(9, 202),
(9, 201),
(9, 203),
(9, 103),
(9, 102),
(9, 101),
(9, 100),
(9, 200),
(10, 202),
(10, 200),
(11, 103),
(12, 300),
(12, 301),
(13, 302),
(14, 201),
(15, 103),
(16, 102),
(17, 101),
(17, 102),
(18, 100),
(18, 103),
(19, 303),
(19, 301),
(20, 303),
(20, 302),
(21, 303),
(21, 202),
(22, 100),
(22, 103),
(23, 200),
(23, 201),
(24, 100),
(25, 203),
(25, 202),
(26, 202),
(27, 203),
(28, 200),
(28, 202),
(29, 302),
(29, 300),
(30, 103),
(30, 100);