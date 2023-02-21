CREATE TABLE `employee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);


INSERT INTO `employee` (first_name, age, salary) VALUES
('Ram', 70, 90000 ),
('Sandy', 50, 45000),
('Allen', 25, 30000);
