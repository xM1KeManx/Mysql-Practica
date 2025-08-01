CREATE DATABASE IF NOT EXISTS Biblioteca;
USE Biblioteca;

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    correo VARCHAR(100)
);

CREATE TABLE Libro (
    id_libro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200),
    autor VARCHAR(100),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

CREATE TABLE Prestamo (
    id_prestamo INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_libro INT,
    fecha_prestamo DATE,
    fecha_devolucion DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_libro) REFERENCES Libro(id_libro)
);
