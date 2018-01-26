1
 SELECT phone_number,name FROM   employees where id = 13

2
 SELECT asset_information.name,assigned_employee FROM employees
  join asset_information on asset_information.employee_id = employees.id

3
 SELECT name,repaired from history

4
  SELECT employees.name,asset_information.name,asset_status.name 
  FROM employees
  join asset_information on asset_information.employee_id = employees.id

  join asset_status on asset_information.asset_status_id = asset_status.id
