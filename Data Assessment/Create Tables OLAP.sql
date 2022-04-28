CREATE TABLE properties (
  property_id int AUTO_INCREMENT PRIMARY KEY,
  type varchar(10) NOT NULL,
  details varchar(100),
  street_line1 varchar(20),
  street_line2 varchar(20),
  city varchar(20),
  county varchar(20),
  country varchar(20),
  postcode varchar(10),
  date_on_market date NOT NULL,
  date_sold date,
  asking_price double(8,2),
  buyer_offer double(8,2),
  passed_health_safety boolean
);

CREATE TABLE clients (
  client_id int AUTO_INCREMENT PRIMARY KEY,
  first_name varchar(20) NOT NULL,
  surname varchar(20) NOT NULL,
  email varchar(35),
  mobile varchar(15) NOT NULL
);

CREATE TABLE employees (
  emp_id int AUTO_INCREMENT PRIMARY KEY,
  refers_to int(6),
  first_name varchar(20) NOT NULL,
  surname varchar(20) NOT NULL,
  email varchar(30) DEFAULT "contact@myhomes.com",
  mobile varchar(15) NOT NULL,
  hire_date date NOT NULL,
  to_date date,
  salary double(8,2),
  street_line1 varchar(20),
  street_line2 varchar(20),
  city varchar(20),
  county varchar(20),
  country varchar(20) NOT NULL,
  postcode varchar(10),
  FOREIGN KEY (refers_to) REFERENCES employees(emp_id)
);

CREATE TABLE areas (
  area_id int(6) PRIMARY KEY,
  area_name varchar(30) NOT NULL
);

CREATE TABLE sales (
  property_id int(6),
  emp_id int(6),
  buyer_id int(6),
  seller_id int(6),
  area_id int(6),
  sold_price double(8,2),
  total_area_sales double(8,2),
  avg_area_sales double(8,2),
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
  FOREIGN KEY (property_id) REFERENCES properties(property_id),
  FOREIGN KEY (buyer_id) REFERENCES clients(client_id),
  FOREIGN KEY (seller_id) REFERENCES clients(client_id),
  FOREIGN KEY (area_id) REFERENCES areas(area_id)
);