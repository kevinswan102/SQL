#Kevin Swan
#Calculator Function
use swank8;

DROP FUNCTION IF EXISTS CalculatorFunction;

DELIMITER $$
CREATE FUNCTION CalculatorFunction(num1 int, num2 int, op varchar(5)) 
RETURNS int(1)
BEGIN

DECLARE result int; 

if op = '+' then 
	set result = num1 + num2; 

	elseif op = '-' then 
		set result = num1 - num2;

	elseif op = '*' then 
		set result = num1 * num2;

	elseif op = '/' then 
		set result = num1 / num2;
	
	else
		set result = -1;

end if; 

RETURN (result);

END $$
DELIMITER ;

SELECT CalculatorFunction(1, 2, '*') AS Result;