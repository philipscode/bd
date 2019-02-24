CREATE VIEW `Sport club`.`errors` AS
SELECT `sn`.`full_name` Sportsman
FROM `Sport club`.`sportsmen` `sn`
WHERE `sn`.`partner` IS NOT NULL
AND (`sn`.`partner` NOT IN (SELECT `certificate_number` FROM `Sport club`.`sportsmen`)
	OR `sn`.`certificate_number` <> (SELECT `s`.`partner` FROM `Sport club`.`sportsmen` `s`
									  WHERE `s`.`certificate_number` = `sn`.`partner`));