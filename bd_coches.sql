-- Servicio Web en PHP por Jose Hernández
-- https://josehernandez.es/2011/01/18/servicio-web-php.html

CREATE DATABASE `coches`;

USE `coches`;


CREATE TABLE IF NOT EXISTS `marcas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=10 ;



INSERT INTO `marcas` (`id`, `marca`) VALUES
(1, 'Ford'),
(2, 'Seat'),
(3, 'Nissan'),
(4, 'Audi'),
(5, 'BMW'),
(6, 'Citroen');



CREATE TABLE IF NOT EXISTS `modelos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `marca` bigint(20) unsigned NOT NULL,
  `modelo` varchar(75) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=37 ;


INSERT INTO `modelos` (`id`, `marca`, `modelo`) VALUES
(1, 1, 'Ka'),
(2, 1, 'Fiesta'),
(3, 1, 'Focus'),
(4, 1, 'Kuga'),
(5, 1, 'Mondeo'),
(6, 1, 'C-Max'),
(7, 1, 'Galaxy'),
(8, 2, 'Altea'),
(9, 2, 'Arosa'),
(10, 2, 'Córdoba'),
(11, 2, 'Exeo'),
(12, 2, 'Ibiza'),
(13, 2, 'León'),
(14, 3, 'Micra'),
(15, 3, 'Note'),
(16, 3, 'Pathfinder'),
(17, 3, 'Almera'),
(18, 3, 'Qashqai'),
(19, 4, 'A1'),
(20, 4, 'A2'),
(21, 4, 'A3'),
(22, 4, 'A4'),
(23, 4, 'A5'),
(24, 4, 'A6'),
(25, 4, 'A7'),
(26, 4, 'A8'),
(27, 5, 'Serie 1'),
(28, 5, 'Serie 3'),
(29, 5, 'Serie 5'),
(30, 5, 'Serie 6'),
(31, 5, 'Serie 7'),
(32, 6, 'C2'),
(33, 6, 'C3'),
(34, 6, 'C4'),
(35, 6, 'Xsara'),
(36, 6, 'Xsara Picasso');

CREATE TABLE IF NOT EXISTS `videos` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `url` varchar(140) COLLATE utf8_spanish_ci NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=10 ;

INSERT INTO `videos` (`id`, `url`) VALUES
(1, 'https://youtu.be/R0X9zSh6djw'),
(2, 'https://youtu.be/b8gGJSJeUTQ'),
(3, 'https://youtu.be/BXXkp-P20hU'),
(4, 'https://youtu.be/oZD2uALmvbU'),
(5, 'https://youtu.be/d7wj_Pm14FM'),
(6, 'https://youtu.be/oKKAWZUAMrQ');
