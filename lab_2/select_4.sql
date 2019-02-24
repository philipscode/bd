SELECT `t`.`sport` Sport, COUNT(`s`.`certificate_number`) Amount
FROM `Sport club`.`sportsmen` `s`
INNER JOIN `Sport club`.`trainers` `t` ON `t`.`id` = `s`.`trainer`
GROUP BY `t`.`sport`;