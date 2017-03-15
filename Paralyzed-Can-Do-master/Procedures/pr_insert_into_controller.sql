CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_controller`()
BEGIN
DECLARE v_frequency DECIMAL(5,2);
DECLARE v_action VARCHAR(1);


select decFrequency into v_frequency from decoder;
select `action` into v_action from decoder;
 
insert into controller(frequency, `action`) values(v_frequency, v_action);
 



END