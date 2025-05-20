CREATE DATABASE IF NOT EXISTS mascotas_db;
USE mascotas_db;

CREATE TABLE IF NOT EXISTS duenos (
    id_dueno INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS mascotas (
    id_mascota INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50),
    raza VARCHAR(50),
    id_dueno INT,
    FOREIGN KEY (id_dueno) REFERENCES duenos(id_dueno)
);