CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_vitalSign_simulator`()
BEGIN

DECLARE sys_bp,dy_bp,hr,resp int;
DECLARE stat varchar(2);

set sys_bp = ROUND((RAND() * (110-80))+90);
set dy_bp = ROUND((RAND() * (80-50))+50);
set hr = ROUND((RAND() * (130-80))+90);
set resp = ROUND((RAND() * (30-20))+20);

 set stat = fn_eval_Status(sys_bp,dy_bp,hr,resp);

	insert into vitalsign(systolic_bpRate,diastolic_bpRate,heartRate,respiratoryRate,`status`,`timestamp`) values(sys_bp,dy_bp,hr,resp,stat,NOW());










END