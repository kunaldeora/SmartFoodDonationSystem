CREATE DEFINER=`root`@`localhost` PROCEDURE `PR_CallToCursor`()
BEGIN
DECLARE vs_id INT(11); 
DECLARE v_empty INT DEFAULT 0;
DECLARE userInput VARCHAR(1);
DECLARE abnormal_vitalsigns_cursor 
CURSOR FOR 
select vitalSignId from paralyzed_can_do.vitalsign where status='AB';

-- check if there are any null values
declare continue handler
for not found set v_empty = 1;

OPEN abnormal_vitalsigns_cursor;

loop_call_to_interceptor:loop

FETCH abnormal_vitalsigns_cursor INTO vs_id;

-- if there are null value the loop will continue
If v_empty = 1 Then

Leave loop_call_to_interceptor;
else
   SELECT 'YES';
   call PR_DataForInterpretor('Y');
end if;

end loop loop_call_to_interceptor;

close abnormal_vitalsigns_cursor;
END