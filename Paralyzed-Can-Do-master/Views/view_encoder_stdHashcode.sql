CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `view_encoder_stdhashcode` AS
    SELECT 
        `e`.`encFrequency` AS `encFrequency`,
        `e`.`present_stage` AS `present_stage`,
        `e`.`hashcode` AS `hashcode`,
        `s`.`hc1` AS `hc1`,
        `s`.`hc2` AS `hc2`,
        `s`.`hc3` AS `hc3`,
        `s`.`hc4` AS `hc4`,
        `s`.`hc5` AS `hc5`,
        `s`.`hc6` AS `hc6`,
        `s`.`hc7` AS `hc7`,
        `s`.`hc8` AS `hc8`,
        `s`.`hc9` AS `hc9`
    FROM
        (`encoder` `e`
        JOIN `standard_hashcode` `s` ON ((`e`.`hashcode` = `s`.`stdHashId`)))