# view:

show databases;
use record1;
show tables;

select*from Department D inner join Employee E
on D.DeptId = E.DeptId
inner join Location L
on D.LocationId = L.LocationId;

Select D.EmpId,D.EmpName,D.Salary,D.State,
E.DeptName,L.LocationName Location
from Department D inner join Employee E
on D.DeptId = E.DeptId
inner join Location L
on D.LocationId = L.LocationId;

Create view Daily_report
as
Select D.EmpId,D.EmpName,D.Salary,D.State,
E.DeptName,L.LocationName Location
from Department D inner join Employee E
on D.DeptId = E.DeptId
inner join Location L
on D.LocationId = L.LocationId;

Select*from Daily_report;

# Stored procedure:

Delimiter //
Create procedure job(IN Salary int)
Begin
Select*from Department 
Where Department.Salary >= Salary;
End //


Call job(60000);

Delimiter //
Create procedure job1(out Result int)
Begin
Select count(*) into Result from Employee 
where Employee.Salary >= 30000;
End //

Call job1(@Result);
Select @Result as "No of Employee";

Call job(30000);

Delimiter //
Create procedure Job2()
Begin
Select D.EmpId,D.EmpName,D.Salary,D.State,
E.DeptName,L.LocationName Location
from Department D inner join Employee E
on D.DeptId = E.DeptId
inner join Location L
on D.LocationId = L.LocationId;
End //

Call job2;














