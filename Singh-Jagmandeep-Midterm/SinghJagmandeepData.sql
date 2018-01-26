INSERT INTO employees (name,phone_number,mailing_address,email_address,logins,password) values ('Jakson','9501248004','123 somestreet','starstreet@live.com','1234','2345');
INSERT INTO employees (name,phone_number,mailing_address,email_address,logins,password) values ('Cris','6131245111','43 woodroffstreet','sunshine@google.com','5454','core');
INSERT INTO employees (name,phone_number,mailing_address,email_address,logins,password) values ('Pitbull','5231245419','58 nippiansportsplex','singer@google.com','5841','fame');
INSERT INTO employees (name,phone_number,mailing_address,email_address,logins,password) values ('Brok','2131247543','81 town hall','wrestler@google.com','6438','strength');
INSERT INTO employees (name,phone_number,mailing_address,email_address,logins,password) values ('john','5831247826','56 Down town','wrestler@google.com','6827','strength');
INSERT INTO employees (name,phone_number,mailing_address,email_address,logins,password) values ('roman','9271267326','82 Deer town','wrestler@google.com','4338','strength');
select * FROM employees;

INSERT INTO history (name,repaired) values ('computer','true');
INSERT INTO history (name,repaired) values ('Recordere','true');
INSERT INTO history (name,repaired) values ('Car','true');
select * FROM history;

insert into asset_status (name) values('New');
select * from asset_status;


INSERT INTO asset_information (name,assigned_employee,employee_id,asset_status_id) values ('computer','',13,1);
INSERT INTO asset_information (name,assigned_employee,employee_id,asset_status_id) values ('recorder','',14,1);
INSERT INTO asset_information (name,assigned_employee,employee_id,asset_status_id) values ('car','',15,1);
INSERT INTO asset_information (name,assigned_employee,employee_id,asset_status_id) values ('boxing_gloves','',16,1);
INSERT INTO asset_information (name,assigned_employee,employee_id,asset_status_id) values ('punching_bag','',17,1);
SELECT * FROM asset_information ;


