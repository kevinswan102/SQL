#Calculator procedure
use swank8;

drop procedure if exists mycalc;
DELIMITER $$
create procedure mycalc(num1 int, num2 int, op varchar(5) )

BEGIN 

declare result int;  

if op = '+' then 
	set result = num1 + num2; 

	elseif op = '-' then 
		set result = num1 - num2;

	elseif op = '*' then 
		set result = num1 * num2;

	elseif op = '/' then 
		set result = num1 / num2;
    else 
		BEGIN
			select 'Invalid operator';
		END; 

end if; 

select num1 as Number_1, num2 as Number_2, op as Operator, result as Result;

END $$
DELIMITER ;


call mycalc(-5, 4, "-"); 

