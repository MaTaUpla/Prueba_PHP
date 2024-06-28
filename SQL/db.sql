-- Crear la base de datos
CREATE DATABASE votacion;

-- Usar la base de datos
USE votacion;

-- Crear la tabla region
CREATE TABLE region (
    region_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_region VARCHAR(100) NOT NULL
);

-- Crear la tabla comuna
CREATE TABLE comuna (
    comuna_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_comuna VARCHAR(100) NOT NULL,
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES region(region_id)
);

-- Crear la tabla candidato
CREATE TABLE candidato (
    candidato_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_candidato VARCHAR(100) NOT NULL
);

-- Crear la tabla votacion
CREATE TABLE votos (
    rut VARCHAR(15) UNIQUE NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    alias VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    region_id INT,
    comuna_id INT,
    candidato_id INT,
    web BOOLEAN,
    tv BOOLEAN,
    rrss BOOLEAN,
    amigo BOOLEAN,
    FOREIGN KEY (candidato_id) REFERENCES candidato(candidato_id),
    FOREIGN KEY (region_id) REFERENCES region(region_id),
    FOREIGN KEY (comuna_id) REFERENCES comuna(comuna_id)
);

-- Poblar la tabla con algunas de las regiones de Chile
INSERT INTO region (region_id, nombre_region) VALUES (1, 'Arica y Parinacota');
INSERT INTO region (region_id, nombre_region) VALUES (2, 'Tarapacá');
INSERT INTO region (region_id, nombre_region) VALUES (3, 'Antofagasta');
INSERT INTO region (region_id, nombre_region) VALUES (4, 'Atacama');
INSERT INTO region (region_id, nombre_region) VALUES (5, 'Coquimbo');
INSERT INTO region (region_id, nombre_region) VALUES (6, 'Valparaíso');
INSERT INTO region (region_id, nombre_region) VALUES (7, 'Metropolitana');
INSERT INTO region (region_id, nombre_region) VALUES (8, 'O´Higgins');
INSERT INTO region (region_id, nombre_region) VALUES (9, 'Maule');
INSERT INTO region (region_id, nombre_region) VALUES (10, 'Ñuble');
INSERT INTO region (region_id, nombre_region) VALUES (11, 'Biobío');
INSERT INTO region (region_id, nombre_region) VALUES (12, 'La Araucania');
INSERT INTO region (region_id, nombre_region) VALUES (13, 'Los Ríos');
INSERT INTO region (region_id, nombre_region) VALUES (14, 'Los Lagos');
INSERT INTO region (region_id, nombre_region) VALUES (15, 'Aysén');
INSERT INTO region (region_id, nombre_region) VALUES (16, 'Magallanes');

-- Poblar la tabla con algunas de las comunes de las regiones ingresadas de Chile

INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(1, 'Arica', 1);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(2, 'Camarones', 1);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(3, 'General Lagos', 1);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(4, 'Putre', 1);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(5, 'Alto Hospicio', 2);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(6, 'Iquique', 2);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(7, 'Camiña', 2);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(8, 'Colchane', 2);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(9, 'Huara', 2);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(10, 'Pica', 2);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(11, 'Pozo Almonte', 2);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(12, 'Antofagasta', 3);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(13, 'Mejillones', 3);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(14, 'Sierra Gorda', 3);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(15, 'Taltal', 3);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(16, 'Calama', 3);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(17, 'Ollague', 3);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(18, 'San Pedro de Atacama', 3);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(19, 'María Elena', 3);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(20, 'Tocopilla', 3);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(21, 'Chañaral', 4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(22, 'Diego de Almagro', 4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(23, 'Caldera', 4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(24, 'Copiapó', 4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(25, 'Tierra Amarilla', 4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(26, 'Alto del Carmen', 4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(27, 'Freirina', 4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(28, 'Huasco', 4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(29, 'Vallenar', 4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(30, 'Canela', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(31, 'Illapel', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(32, 'Los Vilos', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(33, 'Salamanca', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(34, 'Andacollo', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(35, 'Coquimbo', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(36, 'La Higuera', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(37, 'La Serena', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(38, 'Paihuaco', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(39, 'Vicuña', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(40, 'Combarbalá', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(41, 'Monte Patria', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(42, 'Ovalle', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(43, 'Punitaqui', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(44, 'Río Hurtado', 5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(45, 'Isla de Pascua', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(46, 'Calle Larga', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(47, 'Los Andes', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(48, 'Rinconada', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(49, 'San Esteban', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(50, 'La Ligua', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(51, 'Papudo', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(52, 'Petorca', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(53, 'Zapallar', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(54, 'Hijuelas', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(55, 'La Calera', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(56, 'La Cruz', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(57, 'Limache', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(58, 'Nogales', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(59, 'Olmué', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(60, 'Quillota', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(61, 'Algarrobo', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(62, 'Cartagena', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(63, 'El Quisco', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(64, 'El Tabo', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(65, 'San Antonio', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(66, 'Santo Domingo', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(67, 'Catemu', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(68, 'Llaillay', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(69, 'Panquehue', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(70, 'Putaendo', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(71, 'San Felipe', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(72, 'Santa María', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(73, 'Casablanca', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(74, 'Concón', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(75, 'Juan Fernández', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(76, 'Puchuncaví', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(77, 'Quilpué', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(78, 'Quintero', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(79, 'Valparaíso', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(80, 'Villa Alemana', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(81, 'Viña del Mar', 6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(82, 'Colina', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(83, 'Lampa', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(84, 'Tiltil', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(85, 'Pirque', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(86, 'Puente Alto', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(87, 'San José de Maipo', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(88, 'Buin', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(89, 'Calera de Tango', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(90, 'Paine', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(91, 'San Bernardo', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(92, 'Alhué', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(93, 'Curacaví', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(94, 'María Pinto', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(95, 'Melipilla', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(96, 'San Pedro', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(97, 'Cerrillos', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(98, 'Cerro Navia', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(99, 'Conchalí', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(100, 'El Bosque', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(101, 'Estación Central', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(102, 'Huechuraba', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(103, 'Independencia', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(104, 'La Cisterna', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(105, 'La Granja', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(106, 'La Florida', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(107, 'La Pintana', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(108, 'La Reina', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(109, 'Las Condes', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(110, 'Lo Barnechea', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(111, 'Lo Espejo', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(112, 'Lo Prado', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(113, 'Macul', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(114, 'Maipú', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(115, 'Ñuñoa', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(116, 'Pedro Aguirre Cerda', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(117, 'Peñalolén', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(118, 'Providencia', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(119, 'Pudahuel', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(120, 'Quilicura', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(121, 'Quinta Normal', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(122, 'Recoleta', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(123, 'Renca', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(124, 'San Miguel', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(125, 'San Joaquín', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(126, 'San Ramón', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(127, 'Santiago', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(128, 'Vitacura', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(129, 'El Monte', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(130, 'Isla de Maipo', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(131, 'Padre Hurtado', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(132, 'Peñaflor', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(133, 'Talagante', 7);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(134, 'Codegua', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(135, 'Coínco', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(136, 'Coltauco', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(137, 'Doñihue', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(138, 'Graneros', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(139, 'Las Cabras', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(140, 'Machalí', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(141, 'Malloa', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(142, 'Mostazal', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(143, 'Olivar', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(144, 'Peumo', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(145, 'Pichidegua', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(146, 'Quinta de Tilcoco', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(147, 'Rancagua', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(148, 'Rengo', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(149, 'Requínoa', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(150, 'San Vicente de Tagua Tagua', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(151, 'La Estrella', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(152, 'Litueche', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(153, 'Marchihue', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(154, 'Navidad', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(155, 'Peredones', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(156, 'Pichilemu', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(157, 'Chépica', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(158, 'Chimbarongo', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(159, 'Lolol', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(160, 'Nancagua', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(161, 'Palmilla', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(162, 'Peralillo', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(163, 'Placilla', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(164, 'Pumanque', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(165, 'San Fernando', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(166, 'Santa Cruz', 8);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(167, 'Cauquenes', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(168, 'Chanco', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(169, 'Pelluhue', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(170, 'Curicó', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(171, 'Hualañé', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(172, 'Licantén', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(173, 'Molina', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(174, 'Rauco', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(175, 'Romeral', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(176, 'Sagrada Familia', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(177, 'Teno', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(178, 'Vichuquén', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(179, 'Colbún', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(180, 'Linares', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(181, 'Longaví', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(182, 'Parral', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(183, 'Retiro', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(184, 'San Javier', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(185, 'Villa Alegre', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(186, 'Yerbas Buenas', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(187, 'Constitución', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(188, 'Curepto', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(189, 'Empedrado', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(190, 'Maule', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(191, 'Pelarco', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(192, 'Pencahue', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(193, 'Río Claro', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(194, 'San Clemente', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(195, 'San Rafael', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(196, 'Talca', 9);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(197, 'Arauco', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(198, 'Cañete', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(199, 'Contulmo', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(200, 'Curanilahue', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(201, 'Lebu', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(202, 'Los Álamos', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(203, 'Tirúa', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(204, 'Alto Biobío', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(205, 'Antuco', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(206, 'Cabrero', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(207, 'Laja', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(208, 'Los Ángeles', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(209, 'Mulchén', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(210, 'Nacimiento', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(211, 'Negrete', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(212, 'Quilaco', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(213, 'Quilleco', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(214, 'San Rosendo', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(215, 'Santa Bárbara', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(216, 'Tucapel', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(217, 'Yumbel', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(218, 'Chiguayante', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(219, 'Concepción', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(220, 'Coronel', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(221, 'Florida', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(222, 'Hualpén', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(223, 'Hualqui', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(224, 'Lota', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(225, 'Penco', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(226, 'San Pedro de La Paz', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(227, 'Santa Juana', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(228, 'Talcahuano', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(229, 'Tomé', 10);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(230, 'Bulnes', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(231, 'Chillán', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(232, 'Chillán Viejo', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(233, 'Cobquecura', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(234, 'Coelemu', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(235, 'Coihueco', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(236, 'El Carmen', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(237, 'Ninhue', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(238, 'Ñiquen', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(239, 'Pemuco', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(240, 'Pinto', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(241, 'Portezuelo', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(242, 'Quillón', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(243, 'Quirihue', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(244, 'Ránquil', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(245, 'San Carlos', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(246, 'San Fabián', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(247, 'San Ignacio', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(248, 'San Nicolás', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(249, 'Treguaco', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(250, 'Yungay', 11);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(251, 'Carahue', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(252, 'Cholchol', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(253, 'Cunco', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(254, 'Curarrehue', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(255, 'Freire', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(256, 'Galvarino', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(257, 'Gorbea', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(258, 'Lautaro', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(259, 'Loncoche', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(260, 'Melipeuco', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(261, 'Nueva Imperial', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(262, 'Padre Las Casas', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(263, 'Perquenco', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(264, 'Pitrufquén', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(265, 'Pucón', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(266, 'Saavedra', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(267, 'Temuco', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(268, 'Teodoro Schmidt', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(269, 'Toltén', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(270, 'Vilcún', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(271, 'Villarrica', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(272, 'Angol', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(273, 'Collipulli', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(274, 'Curacautín', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(275, 'Ercilla', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(276, 'Lonquimay', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(277, 'Los Sauces', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(278, 'Lumaco', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(279, 'Purén', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(280, 'Renaico', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(281, 'Traiguén', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(282, 'Victoria', 12);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(283, 'Corral', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(284, 'Lanco', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(285, 'Los Lagos', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(286, 'Máfil', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(287, 'Mariquina', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(288, 'Paillaco', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(289, 'Panguipulli', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(290, 'Valdivia', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(291, 'Futrono', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(292, 'La Unión', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(293, 'Lago Ranco', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(294, 'Río Bueno', 13);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(295, 'Ancud', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(296, 'Castro', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(297, 'Chonchi', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(298, 'Curaco de Vélez', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(299, 'Dalcahue', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(300, 'Puqueldón', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(301, 'Queilén', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(302, 'Quemchi', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(303, 'Quellón', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(304, 'Quinchao', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(305, 'Calbuco', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(306, 'Cochamó', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(307, 'Fresia', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(308, 'Frutillar', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(309, 'Llanquihue', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(310, 'Los Muermos', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(311, 'Maullín', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(312, 'Puerto Montt', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(313, 'Puerto Varas', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(314, 'Osorno', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(315, 'Puero Octay', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(316, 'Purranque', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(317, 'Puyehue', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(318, 'Río Negro', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(319, 'San Juan de la Costa', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(320, 'San Pablo', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(321, 'Chaitén', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(322, 'Futaleufú', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(323, 'Hualaihué', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(324, 'Palena', 14);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(325, 'Aisén', 15);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(326, 'Cisnes', 15);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(327, 'Guaitecas', 15);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(328, 'Cochrane', 15);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(329, "O'higgins", 15);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(330, 'Tortel', 15);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(331, 'Coihaique', 15);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(332, 'Lago Verde', 15);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(333, 'Chile Chico', 15);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(334, 'Río Ibáñez', 15);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(335, 'Antártica', 16);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(336, 'Cabo de Hornos', 16);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(337, 'Laguna Blanca', 16);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(338, 'Punta Arenas', 16);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(339, 'Río Verde', 16);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(340, 'San Gregorio', 16);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(341, 'Porvenir', 16);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(342, 'Primavera', 16);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(343, 'Timaukel', 16);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(344, 'Natales', 16);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES(345, 'Torres del Paine', 16);

-- Poblar la tabla con candidatos
INSERT INTO candidato (candidato_id, nombre_candidato) VALUES (1,'Brandon Sanderson');
INSERT INTO candidato (candidato_id, nombre_candidato) VALUES (2,'George Orwell');
INSERT INTO candidato (candidato_id, nombre_candidato) VALUES (3,'Stephen King');
