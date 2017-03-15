-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: paralyzed_can_do
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
/*!50003 DROP FUNCTION IF EXISTS `fn_decimal_to_binary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_decimal_to_binary`(IncomingNumber integer) RETURNS varchar(20) CHARSET utf8
BEGIN

DECLARE BinNumber	VARCHAR(200);
SET BinNumber = conv(IncomingNumber,10, 2) ;



RETURN BinNumber;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_insert_into_transmitter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_insert_into_transmitter`()
BEGIN

Declare v_empty integer default 0;
Declare v_frequency decimal(5,2);
declare v_frequency_round integer default 0;
declare v_binary varchar(20);
-- Declaring the cursor for all the frequency from the activator whose status is "Y".

Declare cur_activator_frequency cursor for
Select frequency from activator where flag="Y";


-- Declaring the not found handler to restrict the corrupt data.
declare continue handler
for not found set v_empty = 1;

Open cur_activator_frequency;

loop_activator_value : loop

Fetch cur_activator_frequency into v_frequency;

-- if any null value comes then we will continue the loop
If v_empty = 1 Then
Leave loop_activator_value;
End if;

-- rounding the frequency to make a discrete value.
set v_frequency_round = round(v_frequency);

-- select v_frequency_round;

set v_binary = fn_decimal_to_binary(v_frequency_round);

call paralyzed_can_do.pr_splitBinaryStr_insertintoTransmitter(v_binary);

end loop loop_activator_value;

close cur_activator_frequency;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pr_splitBinaryStr_insertIntoTransmitter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_splitBinary`(IN strBinary varchar(20))
BEGIN
	
    DECLARE v_d1, v_d2, v_d3, v_d4, v_d5 BIT(1) DEFAULT 0;
    DECLARE strLength INT;
    SET strLength = length(strBinary);
    
    IF strLength = 1 THEN	
	   SET v_d5 = CAST(SUBSTRING(strBinary,1,1) AS UNSIGNED); 
	   INSERT INTO transmitter (d1,d2,d3,d4,d5,`timestamp`) values(v_d1,v_d2,v_d3,v_d4,v_d5,now());
	END IF;
    
    IF strLength = 2 THEN
       SET v_d4 = CAST(SUBSTRING(strBinary,1,1) AS UNSIGNED);
       SET v_d5 = CAST(SUBSTRING(strBinary,2,1) AS UNSIGNED);	
	   INSERT INTO transmitter (d1,d2,d3,d4,d5,`timestamp`) values(v_d1,v_d2,v_d3,v_d4,v_d5,now());
    END IF;
    
    IF strLength = 3 THEN
       SET v_d3 = CAST(SUBSTRING(strBinary,1,1) AS UNSIGNED);
	   SET v_d4 = CAST(SUBSTRING(strBinary,2,1) AS UNSIGNED);
       SET v_d5 = CAST(SUBSTRING(strBinary,3,1) AS UNSIGNED);
	   INSERT INTO transmitter (d1,d2,d3,d4,d5,`timestamp`) values(v_d1,v_d2,v_d3,v_d4,v_d5,now());
	END IF;
    
    IF strLength = 4 THEN
	   SET v_d2 = CAST(SUBSTRING(strBinary,1,1) AS UNSIGNED);
	   SET v_d3 = CAST(SUBSTRING(strBinary,2,1) AS UNSIGNED);
	   SET v_d4 = CAST(SUBSTRING(strBinary,3,1) AS UNSIGNED);
	   SET v_d5 = CAST(SUBSTRING(strBinary,4,1) AS UNSIGNED);
	   INSERT INTO transmitter (d1,d2,d3,d4,d5,`timestamp`) values(v_d1,v_d2,v_d3,v_d4,v_d5,now());
	END IF;

	IF strLength = 5 THEN
       SET v_d1 = CAST(SUBSTRING(strBinary,1,1) AS UNSIGNED);    
	   SET v_d2 = CAST(SUBSTRING(strBinary,2,1) AS UNSIGNED);
	   SET v_d3 = CAST(SUBSTRING(strBinary,3,1) AS UNSIGNED);
       SET v_d4 = CAST(SUBSTRING(strBinary,4,1) AS UNSIGNED);
       SET v_d5 = CAST(SUBSTRING(strBinary,5,1) AS UNSIGNED);
	   INSERT INTO transmitter (d1,d2,d3,d4,d5,`timestamp`) values(v_d1,v_d2,v_d3,v_d4,v_d5,now());
    END IF;
    
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

-- Dump completed on 2016-04-13  1:36:37
