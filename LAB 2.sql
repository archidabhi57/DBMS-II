--1. Display all the employees whose name starts with “m” and 4 th character is “h”.

		SELECT * FROM EMPLOYEE
		WHERE ENAME LIKE 'M__H%'

--2. Find the value of 3 raised to 5. Label the column as output.

		SELECT POWER(3,5)

--3. Write a query to subtract 20 days from the current date.

		SELECT GETDATE()-20

--4. Write a query to display name of employees whose name starts with “j” and contains “n” in their name.

		SELECT ENAME FROM EMPLOYEE
		WHERE ENAME LIKE 'J%N%'

--5. Display 2nd to 9th character of the given string “SQL Programming”.

		SELECT SUBSTRING('SQL PROGRAMING',2,8)

--6. Display name of the employees whose city name ends with “ney” &contains six characters.

		
		SELECT ENAME FROM EMPLOYEE
		WHERE CITY LIKE '___NEY'

--7. Write a query to convert value 15 to string.

		SELECT CONVERT(VARCHAR,15)

--8. Add department column with varchar (20) to Employee table.

		ALTER TABLE EMPLOYEE
		ADD COLUMN DEPARTMENT VARCHAR(20)

--9. Set the value of department to Marketing who belongs to London city.

		UPDATE EMPLOYEE
		SET DEPARTEMENT = 'MARKETING'
		WHERE CITY = 'LONDON'

--10. Display all the employees whose name ends with either “n” or “y”.

		SELECT * FROM EMPLOYEE
		WHERE ENAME LIKE '%N' OR ENAME LIKE '%Y'

--11. Find smallest integer value that is greater than or equal to 63.1, 63.8 and -63.2.

		SELECT CEILING(63.1),CEILING(63.8),CEILING(-63.2)

--12. Display all employees whose joining date is not available.

		SELECT * FROM EMPLOYEE
		WHERE JOININGDATE IS NULL

--13. Display name of the employees in capital letters and city in small letters.

		SELECT UPPER(ENAME),LOWER(CITY) FROM EMPLOYEE 

--14. Change the data type of Ename from varchar (30) to char (30).

		ALTER TABLE EMPLOYEE
		ALTER COLUMN ENAME CHAR(30)

--15. Display city wise maximum salary.

		SELECT CITY,MAX(SALARY) FROM EMPLOYEE GROUP BY CITY

--16. Produce output like <Ename> works at <city> and earns <salary> (In single column).

		SELECT CONCAT(ENAME,' WORKS AT ',CITY,' AND EARNS ',SALARY) FROM EMPLOYEE

--17. Find total number of employees whose salary is more than 5000.

		SELECT COUNT(ENAME) FROM EMPLOYEE
		WHERE SALARY>5000

--18. Write a query to display first 4 & last 3 characters of all the employees.
		
		SELECT LEFT (ENAME,4),RIGHT (ENAME,3)
		FROM EMPLOYEE
		
--19. List the city having total salaries more than 15000 and employees joined after 1st January, 2014.

		SELECT CITY,SUM(SALARY) FROM EMPLOYEE
		WHERE JOININGDATE>'1-JAN-2014'
		GROUP BY CITY
		HAVING SUM(SALARY)>15000

--20. Write a query to replace “u” with “oo” in Ename.

		SELECT REPLACE(ENAME,'U','OO') FROM EMPLOYEE

--21. Display city with average salaries and total number of employees belongs to each city.

		SELECT CITY,AVG(SALARY),COUNT(ENAME) FROM EMPLOYEE

--22. Display total salaries paid to female employees.

		SELECT SUM(SALARY) FROM EMPLOYEE
		WHERE GENDER = 'FEMALE'

--23. Display name of the employees and their experience in years.

		SELECT ENAME,DATEDIFF(YEAR,JOININGDATE,GETDATE())AS EXPERIENCE_IN_YEARS FROM EMPLOYEE

--24. Remove column department from employee table.

		ALTER TABLE EMPLOYEE DROP COLUMN DEPARTMENT

--25. Update the value of city from syndey to null.

		UPDATE EMPLOYEE SET CITY=NULL
		WHERE CITY = 'SYDNEY'

--26. Retrieve all Employee name, Salary & Joining date.

		SELECT ENAME,SALARY,JOININGDATE FROM EMPLOYEE

--27. Find out combine length of Ename & Gender.

		SELECT LEN(ENAME)+LEN(GENDER) FROM EMPLOYEE 

--28. Find the difference between highest & lowest salary.

		SELECT MAX(SALARY) - MIN(SALARY) FROM EMPLOYEE

--29. Rename a column from Ename to FirstName.

		SP_RENAME 'EMPLOYEE.ENAME','FIRSTNAME'

		SP_RENAME 'EMPLOYEE.FIRSTNAME','ENAME'

--30. Rename a table from Employee to EmpMaster.

		SP_RENAME 'EMPLOYEE','EMPMASTER'

