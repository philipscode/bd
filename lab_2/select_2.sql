SELECT `full_name` Sportsman, GROUP_CONCAT(Sport) Sport
FROM (
	SELECT `s`.`full_name`, GROUP_CONCAT(`t`.`sport`) Sport
	FROM `Sport club`.`sportsmen` `s`
	INNER JOIN `Sport club`.`previous trainers` `pt` ON `pt`.`sportsman` = `s`.`certificate_number`
	INNER JOIN `Sport club`.`trainers` `t` ON `pt`.`trainer` = `t`.`id`
	GROUP BY `s`.`full_name`
    
	UNION ALL
    
	SELECT `s`.`full_name`, GROUP_CONCAT(`t`.`sport`) Sport
	FROM `Sport club`.`sportsmen` `s`
	INNER JOIN `Sport club`.`trainers` `t` ON `t`.`id` = `s`.`trainer`
	WHERE `s`.`certificate_number` IN (SELECT DISTINCT`sportsman` FROM `Sport club`.`previous trainers`)
	GROUP BY `s`.`full_name`
) tb
GROUP BY `full_name`;