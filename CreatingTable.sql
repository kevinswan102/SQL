#Kevin Swan 
use swank8; 
DROP TABLE IF EXISTS tblUser; 

#DDL Script 
CREATE TABLE tblUser(
	username VARCHAR(15) PRIMARY KEY NOT NULL
    ,first__name VARCHAR(15) NOT NULL
    ,last_name	VARCHAR(15) NOT NULL
    ,as_of_date	VARCHAR(15)
	,balance decimal(10,2) NOT NULL
    ,ip_address varchar(30) 
);

#DML Script
insert into tblUser values 
('fdorcey0', 'Forbes', 'Dorcey', NULL, 2549.78, '30.63.88.68'),
('atruce1', 'Astrid', 'Truce', '2015-04-25', 2898.61, '118.141.204.129'), 
('tollivierre2', 'Timmy', 'Ollivierre', NULL, 3688.46, '252.207.113.118'), 
('bdanniell3', 'Branden', 'Danniell', '2018-08-10', 4473.78, '58.122.240.116'),
('talden4', 'Tabatha', 'Alden', NULL, 3616.37, '95.243.226.67'), 
('cperritt5', 'Coralyn', 'Perritt', '2018-10-29', 1614.88, '69.143.115.176'),
('ccallender6', 'Celestine', 'Callender', '2018-10-22', 2994.15, NULL), 
('tforrestor7', 'Troy', 'Forrestor', '2018-02-18', 4565.66, NULL), 
('skaspar8', 'Seumas', 'Kaspar', '2018-03-25', 2149.67, '131.253.62.24'), 
('iroxburgh9', 'Iggy', 'Roxburgh', NULL, 2869.78, NULL);

#Update script 
update tblUser set as_of_date=current_date() where as_of_date is null;

#Between select query 
select balance from tblUser where balance between 2500 and 4200;

#Grand total select query 
select sum(balance) as balance FROM tblUser;

