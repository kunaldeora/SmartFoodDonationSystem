CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `view_interpreter_decoder_controller` AS
    SELECT 
        `i`.`timestamp` AS `interpreter_timestamp`,
        `i`.`action` AS `interpreter_action`,
        `i`.`impulseHashcode` AS `impulseHashcode`,
        `d`.`decFrequency` AS `decoder_frequency`,
        `c`.`action` AS `controller_action`,
        `c`.`frequency` AS `controller_frequency`
    FROM
        ((`interpreter` `i`
        JOIN `decoder` `d` ON ((`i`.`interpreterId` = `d`.`interpreter_Id`)))
        JOIN `controller` `c` ON ((`d`.`decoderId` = `c`.`decoder_id`)))