CREATE VIEW `Sport club`.`constant` AS
SELECT `sn`.`full_name` Sportsman
FROM `Sport club`.`sportsmen` `sn`
WHERE `sn`.`certificate_number` NOT IN (SELECT `sportsman` FROM `Sport club`.`previous trainers`);