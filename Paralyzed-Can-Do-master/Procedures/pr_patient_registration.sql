CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_patient_registration`()
BEGIN
call pr_flush_data();

insert into paralyzed_can_do.device values (1,24,"O+",2);


insert into paralyzed_can_do.chip values (1,300,350);

call pr_insert_into_activator();


END