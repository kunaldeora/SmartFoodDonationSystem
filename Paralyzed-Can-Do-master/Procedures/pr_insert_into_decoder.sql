CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_decoder`()
BEGIN

DECLARE v_impulseHashcode VARCHAR(6);
DECLARE v_response VARCHAR(1);
DECLARE v_retainOrRelease INT DEFAULT 0;
DECLARE v_finalFrequency DECIMAL(5,2);
DECLARE v_action varchar(1);

 
 #select impulseHashcode as v_releaseImpulseHashcode from interpreter where action='Y';
 select impulseHashcode into v_impulseHashcode from interpreter;
 select `action` into v_action from interpreter;
 
 
  if v_action='Y' then
  select releaseImpulseFrequency into v_finalFrequency from standard_impulses where releaseImpulseHashCode=v_impulseHashcode;
    elseif v_action='N' then
    select restrainImpulseFrequency into v_finalFrequency from standard_impulses where restrainImpulseHashCode=v_impulseHashcode;
    end if;
    
    

insert into decoder(decFrequency, `action`) values(v_finalFrequency, v_action);



END