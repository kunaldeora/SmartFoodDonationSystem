-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: paralyzed_can_do
-- ------------------------------------------------------
-- Server version	5.7.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping routines for database 'paralyzed_can_do'
--
/*!50003 DROP PROCEDURE IF EXISTS `pr_calculate_average` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;

CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_calculate_average`()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE v_val int;
  DECLARE v_avgFrequency int;
  DECLARE v_decimalVal int;
  DECLARE b1,b2,b3,b4,b5 int;
  DECLARE v_stage int(11);
  DECLARE v_hashCode int;
  DECLARE v_encFrequency int;
  DECLARE v_bloodType varchar(3);
  DECLARE cur_avgCur CURSOR FOR SELECT  d1,d2,d3,d4,d5 FROM paralyzed_can_do.receiver;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cur_avgCur;

	set v_avgFrequency=0;
    set v_val=0;
    
  read_loop: LOOP
    FETCH cur_avgCur INTO b1,b2,b3,b4,b5;
	
     IF done THEN
      LEAVE read_loop;
    ELSE
	
	set v_decimalVal = CONV(BINARY(CONCAT(b1, b2,b3,b4,b5)), 2, 10);
	set v_avgFrequency = v_avgFrequency+v_decimalVal;
    set v_val=v_val+1;
    
    END IF;
   select v_decimalVal;

  END LOOP;
  
 
 
  
  CLOSE cur_avgCur;
  
   
	set v_encFrequency = truncate (v_avgFrequency/v_val,0);
	select v_encFrequency;

	select  currentStage into v_stage from paralyzed_can_do.device;	
  
	select   personBloodType into v_bloodType  from paralyzed_can_do.device;

	select hashCode into v_hashCode from paralyzed_can_do.standardsignal_standardhashcode 
    where ssFrequency = v_encFrequency
    and ssStage = v_stage
    and bloodType = v_bloodType 
    and urge ="Y";
    
    
    call pr_insert_encoder(v_encFrequency,v_stage,v_hashCode);
    
    
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_encoder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_encoder`(In v_encFrequency int, in v_stage int, in v_hashCode int)
BEGIN

insert into encoder(encFrequency,present_stage,hashCode,timestamp) values(v_encFrequency,v_stage,v_hashCode,now());
  

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-13  1:54:08
