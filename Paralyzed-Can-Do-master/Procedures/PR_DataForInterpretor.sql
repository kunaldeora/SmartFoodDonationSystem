CREATE DEFINER=`root`@`localhost` PROCEDURE `PR_DataForInterpretor`(in userAction varchar(1))
BEGIN
DECLARE v_currentTime TIMESTAMP DEFAULT CURRENT_DATE;
DECLARE v_vs_status VARCHAR(2);
DECLARE v_encHashCode INT;
DECLARE v_impulseHashCode int;


set v_vs_status='AB';
set v_encHashCode=(select hashCode from paralyzed_can_do.encoder);


if userAction='Y' THEN 

set v_impulseHashCode=(SELECT i.releaseImpulseHashCode
FROM paralyzed_can_do.standard_impulses as i
INNER JOIN paralyzed_can_do.device as d
ON i.bloodType=d.personBloodType
where i.stage=d.currentStage);

else

set v_impulseHashCode=(SELECT i.restrainImpulseHashCode
FROM paralyzed_can_do.standard_impulses as i
INNER JOIN paralyzed_can_do.device as d
ON i.bloodType=d.personBloodType
where i.stage=d.currentStage);

end if;

insert into paralyzed_can_do.interpreter  (timestamp,vs_status,encHashCode,action,impulseHashCode)values (v_currentTime,v_vs_status,v_encHashCode,userAction,v_impulseHashCode);

END