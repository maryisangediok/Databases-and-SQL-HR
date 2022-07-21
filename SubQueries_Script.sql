
--- Query 1 ---
SELECT * 
FROM EMPLOYEES 
WHERE salary < AVG(SALARY)
;
--- Query 2---	
SELECT EMP_ID, F_NAME, L_NAME, SALARY 
FROM EMPLOYEES 
WHERE SALARY < 
	(SELECT AVG(SALARY) 
	FROM EMPLOYEES)
;
--- Query 3 ---
SELECT EMP_ID, SALARY, MAX(SALARY) AS MAX_SALARY 
FROM EMPLOYEES
;	
--- Query 4 ---
SELECT EMP_ID, SALARY, (SELECT MAX(SALARY) FROM EMPLOYEES ) AS MAX_SALARY 
FROM EMPLOYEES
;
--- Query 5 ---
SELECT * 
FROM (SELECT EMP_ID, F_NAME, L_NAME, JOB_ID, MANAGER_ID, DEP_ID FROM EMPLOYEES) AS EMP4ALL 
;
