SELECT `sn`.`full_name` Sportsman, `t`.`full_name` Trainer, `t`.`sport` Sport
FROM `Sport club`.`sportsmen` `sn`
INNER JOIN `Sport club`.`trainers` `t` ON `t`.`id` = `sn`.`trainer`
ORDER BY `sn`.`full_name`;