SELECT `sn`.`trainer` ID, `t`.`full_name` Name, COUNT(IF (`sn`.`skill_level` IN ('КМС', 'МС'), 1, NULL)) / COUNT(*) Rating
FROM `Sport club`.`sportsmen` `sn`
INNER JOIN `Sport club`.`trainers` `t` ON `t`.`id` = `sn`.`trainer`
GROUP BY `sn`.`trainer`, `t`.`full_name`
ORDER BY `sn`.`trainer`;