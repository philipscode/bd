SELECT `s`.`full_name` Sportsman, `t`.`full_name` Trainer, `sp`.`name` Sport
FROM `Sport club`.`sportsmen` `s`,`Sport club`.`trainers` `t`, `Sport club`.`sports` `sp`
WHERE `t`.`id` = `s`.`trainer` AND `sp`.`name` = `t`.`sport`
ORDER BY `s`.`full_name`;