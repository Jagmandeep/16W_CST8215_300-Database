CREATE TABLE departments(
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR (50) NOT NULL
);


CREATE TABLE provinces(
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR (50) NOT NULL
);

CREATE TABLE countries(
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR (50) NOT NULL
);

CREATE TABLE locations(
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
state VARCHAR (50) NOT NULL,
street_name VARCHAR (50) NOT NULL,
building_number VARCHAR (50) NOT NULL,
provinces_id BIGINT references provinces(id),
countries_id BIGINT references countries(id)
);

CREATE TABLE employees(
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
phone_number BIGINT ,
mobile_number BIGINT ,
work_number BIGINT ,
mailing_address VARCHAR (100) NOT NULL,
email_address VARCHAR (100) NOT NULL,
logins VARCHAR (60) NOT NULL,
password VARCHAR (60) NOT NULL,
departments_id BIGINT references departments(id),
locations_id BIGINT references locations(id)
);


CREATE TABLE asset_status(
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR (50) NOT NULL
);
CREATE TABLE asset_information(
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
assigned_employee VARCHAR (50) NOT NULL,
entry_date DATE ,
last_serviced DATE,
returned_date DATE,
employee_id BIGINT references employees(id),
asset_status_id BIGINT references asset_status(id),
location_id BIGINT references locations(id)
);

CREATE TABLE history(
id BIGSERIAL NOT NULL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
repaired BOOLEAN ,
created DATE,
asset_information_id BIGINT references asset_information(id)
);



