-- 1. Write a query to display all rows from the course_curriculum table.
	
	SELECT * 
	FROM [dbo].[computer_science_curriculum_year1];

-- 2. Write a query to show only the Module_Code and Module_Description columns.

	SELECT Module_Code, 
		   Module_Description
	FROM [dbo].[computer_science_curriculum_year1];

-- 3. Write a query to display the Module_Code and Module_Credits for all modules.

	SELECT Module_Code, 
		   Module_Credits
	FROM [dbo].[computer_science_curriculum_year1];

-- 4. Write a query to find all modules that are Core modules.

	SELECT *
	FROM [dbo].[computer_science_curriculum_year1]
	WHERE Module_Type IN ('core modules');

-- 5. Write a query to list all Elective modules.

	SELECT *
	FROM [dbo].[computer_science_curriculum_year1]
	WHERE Module_Type = 'Elective modules';

-- 6. Write a query to find all modules with more than 15 credits.

	SELECT *
	FROM [dbo].[computer_science_curriculum_year1]
	WHERE Module_Credits > 15 ;

-- 7. Write a query to find the module with the code 'COS 216'.

	SELECT *
	FROM [dbo].[computer_science_curriculum_year1]
	WHERE Module_Code = 'COS 216';

-- 8. Write a query to display modules where the description contains the word 'Statistics'.

	SELECT *
	FROM [dbo].[computer_science_curriculum_year1]
	WHERE Module_Description LIKE '%Statistics%';

-- 9. Write a query to show all modules with credits equal to 12.
	
	SELECT *
	FROM [dbo].[computer_science_curriculum_year1]
	WHERE Module_Credits = 12;

-- 10. Write a query to sort all modules by Module_Credits in descending order.

	SELECT *
	FROM [dbo].[computer_science_curriculum_year1]
	ORDER BY Module_Credits DESC;

-- 11. Write a query to sort modules alphabetically by Module_Code.

	SELECT *
	FROM [dbo].[computer_science_curriculum_year1]
	ORDER BY Module_Code ASC;

-- 12. Write a query to sort Elective modules by Module_Credits in ascending order.
	
	SELECT *
	FROM [dbo].[computer_science_curriculum_year1]
	WHERE Module_Type IN ('Elective modules')
	ORDER BY Module_Credits ASC;

-- 13. Write a query to count how many total modules are in the curriculum.

	SELECT COUNT(*) AS Total_modules
	FROM [dbo].[computer_science_curriculum_year1];

-- 14. Write a query to calculate the total credits for all modules.

	SELECT SUM (Module_credits) AS Total_credits
	FROM [dbo].[computer_science_curriculum_year1];

-- 15. Write a query to find the highest number of credits in the table.
	
	SELECT MAX (Module_credits) AS Max_credits
	FROM [dbo].[computer_science_curriculum_year1];

-- 16. Write a query to find the lowest number of credits in the table.

	SELECT MIN (Module_credits) AS Min_credits
	FROM [dbo].[computer_science_curriculum_year1];

-- 17. Write a query to count how many modules exist in each Module_Type.

	SELECT Module_Type,
		   COUNT (*) AS Total_Modules
	FROM [dbo].[computer_science_curriculum_year1]
	GROUP BY Module_Type;

-- 18. Write a query to calculate the average credits for each module type.

	SELECT Module_Type,
		   AVG (Module_Credits) AS AVG_Credits
	FROM [dbo].[computer_science_curriculum_year1]
	GROUP BY Module_Type;

-- 19. Write a query to display module types where the total credits exceed 30.

	SELECT Module_Type,
		  SUM(Module_Credits) AS Sum_of_Credits
	FROM [dbo].[computer_science_curriculum_year1]
	GROUP BY Module_Type
	HAVING ( SUM(Module_Credits)) > 30;