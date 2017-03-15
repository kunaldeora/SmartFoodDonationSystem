CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `view_activator_transmitter` AS
    SELECT 
        `a`.`activatorId` AS `activatorId`,
        `a`.`volume` AS `volume`,
        `a`.`frequency` AS `frequency`,
        `t`.`d1` AS `d1`,
        `t`.`d2` AS `d2`,
        `t`.`d3` AS `d3`,
        `t`.`d4` AS `d4`,
        `t`.`d5` AS `d5`
    FROM
        (`activator` `a`
        JOIN `transmitter` `t` ON ((`a`.`activatorId` = `t`.`activator_id`)))