CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

/*
TABLES:
 - role
 - user
 - genre
 - book
*/

/* create table 'role' */
CREATE TABLE IF NOT EXISTS role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

/* create table 'user' */
CREATE TABLE IF NOT EXISTS user (
    id INT NOT NULL AUTO_INCREMENT,
    fio VARCHAR(100) NOT NULL,
    login VARCHAR(100) NOT NULL,
    pass VARCHAR(100) NOT NULL,
    id_role INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_role) REFERENCES role(id)
);

/* create table 'genre' */
CREATE TABLE IF NOT EXISTS genre (
	id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS author (
    id INT NOT NULL AUTO_INCREMENT,
    fio VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS book (
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
    id_genre INT NOT NULL,
    year INT NOT NULL,
    pages INT NOT NULL,
    language VARCHAR(20) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_genre) REFERENCES genre(id)
);

CREATE TABLE IF NOT EXISTS book_authors (
    id_book INT NOT NULL,
    id_author INT NOT NULL,
    FOREIGN KEY (id_book) REFERENCES book(id),
    FOREIGN KEY (id_author) REFERENCES author(id)
);

CREATE TABLE IF NOT EXISTS count (
	id_book INT NOT NULL,
	count INT NOT NULL,
    FOREIGN KEY (id_book) REFERENCES book(id)
);

CREATE TABLE IF NOT EXISTS status_order (
	id INT NOT NULL AUTO_INCREMENT,
	status VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS book_order (
	id INT NOT NULL AUTO_INCREMENT,
    id_user INT NOT NULL,
    id_book INT NOT NULL,
    id_status INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_user) REFERENCES user(id),
    FOREIGN KEY (id_book) REFERENCES book(id),
    FOREIGN KEY (id_status) REFERENCES status_order(id)
);

/* insert values in table 'role' */
INSERT INTO role(title) VALUES('Библиотекарь');
INSERT INTO role(title) VALUES('Читатель');

/* insert values in table 'user' */
INSERT INTO user(fio, login, pass, id_role) VALUES('Кот Василий', 'admin', 'admin', 2);
INSERT INTO user(fio, login, pass, id_role) VALUES('Пафнутий Иванов', 'qwerty', 'qwerty', 1);

/* insert values in table 'genre' */
INSERT INTO genre(title) VALUES('Детектив');
INSERT INTO genre(title) VALUES('Фантастика');

INSERT INTO author(fio) VALUES('Достоевский');
INSERT INTO author(fio) VALUES('Пушкин');

INSERT INTO author(fio) VALUES('Достоевский');
INSERT INTO author(fio) VALUES('Пушкин');