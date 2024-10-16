CREATE TABLE IF NOT EXISTS `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `email` VARCHAR(150) NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `roles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE OR REPLACE VIEW `email_view` AS
  SELECT users.email, users.password
  FROM users;

DELIMITER $$
CREATE PROCEDURE `users_count`()
BEGIN
  SELECT COUNT(*) FROM users;
END$$
DELIMITER ;
