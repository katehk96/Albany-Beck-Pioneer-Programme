CREATE TABLE emp_addresses (
  address_id int(6),
  street_line1 varchar(20) NOT NULL,
  street_line2 varchar(20),
  city varchar(20) NOT NULL,
  county varchar(20),
  country varchar(20) NOT NULL,
  postcode varchar(10) NOT NULL,
  PRIMARY KEY (address_id)
);

CREATE TABLE areas (
  area_id int(6),
  area_name varchar(20),
  PRIMARY KEY (area_id)
);

CREATE TABLE clients (
  client_id int(6),
  first_name varchar(20) NOT NULL,
  surname varchar(20) NOT NULL,
  email varchar(30),
  mobile int(15) NOT NULL,
  PRIMARY KEY (client_id)
);

CREATE TABLE property_types (
  type_id int(1),
  type_name varchar(10) NOT NULL,
  PRIMARY KEY (type_id)
);

CREATE TABLE property_locations (
  location_id int(6),
  area_id int(6),
  street_line1 varchar(20),
  street_line2 varchar(20),
  city varchar(20),
  county varchar(20),
  country varchar(20),
  postcode varchar(10),
  PRIMARY KEY (location_id),
  FOREIGN KEY (area_id) REFERENCES areas(area_id)
);

CREATE TABLE employees (
  emp_id int(6),
  first_name varchar(20) NOT NULL,
  surname varchar(20) NOT NULL,
  address_id int(6),
  email varchar(30) DEFAULT 'contact@myhomes.com',
  mobile int(15) NOT NULL,
  hire_date date NOT NULL,
  to_date date,
  salary double(8,2),
  PRIMARY KEY (emp_id),
  FOREIGN KEY (address_id) REFERENCES emp_addresses(address_id)
);


CREATE TABLE properties (
  property_id int(6),
  property_type int(1) NOT NULL,
  emp_id int(6),
  location_id int(6) NOT NULL,
  property_details varchar(100),
  client_id int(6) NOT NULL,
  date_on_market date NOT NULL,
  date_sold date,
  asking_price double(8,2),
  buyer_offer double(8,2),
  selling_price double(8,2),
  passed_health_safety boolean,
  PRIMARY KEY (property_id),
  FOREIGN KEY (client_id) REFERENCES clients(client_id),
  FOREIGN KEY (property_type) REFERENCES property_types(type_id),
  FOREIGN KEY (location_id) REFERENCES property_locations(location_id),
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);


CREATE TABLE management (
  management_id int(4),
  PRIMARY KEY (management_id)
);

CREATE TABLE chiefs (
  chief_id int(4),
  emp_id int(6) NOT NULL,
  management_id int(4) NOT NULL,
  PRIMARY KEY (chief_id),
  FOREIGN KEY (management_id) REFERENCES management(management_id)
);

CREATE TABLE supervisors (
  sup_id int(4),
  emp_id int(6) NOT NULL,
  chief_id int(4) NOT NULL,
  PRIMARY KEY (sup_id),
  FOREIGN KEY (chief_id) REFERENCES chiefs(chief_id)
);

CREATE TABLE sales_reps (
  rep_id int(6),
  emp_id int(6) NOT NULL,
  super_id int(4) NOT NULL,
  PRIMARY KEY (rep_id),
  FOREIGN KEY (super_id) REFERENCES supervisors(sup_id)
);

CREATE TABLE emp_areas (
  emp_id int(6) NOT NULL,
  area_id int(6) NOT NULL,
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
  FOREIGN KEY (area_id) REFERENCES areas(area_id)
);
