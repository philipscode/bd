CREATE TABLE `Sport club`.`sports` (
	`name` VARCHAR(30) PRIMARY KEY,
    `type` VARCHAR(15) CHECK (`type` IN ('индивидуальный', 'парный'))
) ENGINE = InnoDB;

CREATE TABLE `Sport club`.`trainers` (
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `full_name` VARCHAR(50) NOT NULL,
	`sport` VARCHAR(30),
    `skill_level` VARCHAR(7),
    `rating` NUMERIC(4) CHECK (`trainers`.`rating` > 0),
    FOREIGN KEY (`sport`) REFERENCES `Sport club`.`sports` (`name`)
) ENGINE = InnoDB;

CREATE TABLE `Sport club`.`sportsmen` (
	`certificate_number` NUMERIC(6) PRIMARY KEY,
    `full_name` VARCHAR(40) NOT NULL,
    `birth_date` DATE NOT NULL,
    `sex` CHAR NOT NULL CHECK (`sex` IN ('м', 'ж')),
    `skill_level` VARCHAR(7),
    `trainer` INT,
    `rating` NUMERIC(4) CHECK (`rating` > 0),
    `partner` NUMERIC(6),
    `address` VARCHAR(40) NOT NULL,
    `mobile_phone` VARCHAR(15),
    `home_phone` VARCHAR(15),
    `registration_date` DATE,
    FOREIGN KEY (`trainer`) REFERENCES `Sport club`.`trainers` (`id`)
) ENGINE = InnoDB;

CREATE TABLE `Sport club`.`previous trainers` (
	`trainer` INT,
    `sportsman` NUMERIC(6),
    `finish_date` DATE NOT NULL,
    FOREIGN KEY (`trainer`) REFERENCES `Sport club`.`trainers` (`id`),
    FOREIGN KEY (`sportsman`) REFERENCES `Sport club`.`sportsmen` (`certificate_number`)
) ENGINE = InnoDB;