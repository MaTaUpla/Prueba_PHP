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
INSERT INTO region (region_id, nombre_region) VALUES (4, 'Región de Coquimbo');
INSERT INTO region (region_id, nombre_region) VALUES (5, 'Región de Valparaíso');
INSERT INTO region (region_id, nombre_region) VALUES (6, 'Región Metropolitana de Santiago');

-- Poblar la tabla con algunas de las comunes de las regiones ingresadas de Chile
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (1,'Canela',4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (2,'Los Vilos',4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (3,'La Serena',4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (4,'Vicuña',4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (5,'Ovalle',4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (6,'Río Hurtado',4);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (7,'San Antonio',5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (8,'Valparaíso',5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (9,'Viña del Mar',5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (10,'Concón',5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (11,'Quilpue',5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (12,'Villa Alemana',5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (13,'Quillota',5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (14,'Los Andes',5);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (15,'Colina',6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (16,'Lampa',6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (17,'Melipilla',6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (18,'La Granja',6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (19,'La Florida',6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (20,'Puente alto',6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (21,'Santiago',6);
INSERT INTO comuna (comuna_id, nombre_comuna,region_id) VALUES (22,'Vitacura',6);


-- Poblar la tabla con candidatos
INSERT INTO candidato (candidato_id, nombre_candidato) VALUES (1,'Brandon Sanderson');
INSERT INTO candidato (candidato_id, nombre_candidato) VALUES (2,'George Orwell');
INSERT INTO candidato (candidato_id, nombre_candidato) VALUES (3,'Stephen King');
