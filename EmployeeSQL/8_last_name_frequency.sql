-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT last_name AS "Last Name", COUNT(last_name) AS "Count"
FROM employees
GROUP BY last_name
ORDER BY "Count" DESC;