CREATE VIEW `Sport club`.`transitions` AS
SELECT `sn`.`full_name` Sportsman, `t`.`full_name` Trainer, `t`.`sport` Sport, `pt`.`start_date` Start, `pt`.`finish_date` Finish
FROM `Sport club`.`previous trainers` `pt`
INNER JOIN `Sport club`.`sportsmen` `sn` ON `sn`.`certificate_number` =  `pt`.`sportsman`
INNER JOIN `Sport club`.`trainers` `t` ON `t`.`id` = `pt`.`trainer`
UNION
SELECT `sn`.`full_name` Sportsman, `t`.`full_name` Trainer, `t`.`sport` Sport, `sn`.`registration_date` Start, CURDATE() Finish
FROM `Sport club`.`sportsmen` `sn`
INNER JOIN `Sport club`.`trainers` `t` ON `t`.`id` = `sn`.`trainer`;