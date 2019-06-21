CREATE DATABASE samm_db;

USE samm_db;

CREATE TABLE telegram_users(
    id_telegram_user integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_telegram integer(15) not null,
    name varchar(50) NOT NULL,
    email varchar(50) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE productos(
  id_producto int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  sku varchar(10) INDEX NOT NULL,
  producto varchar(100) NOT NULL,
  precio float NOT NULL,
  existencias int(11) NOT NULL,
  update_data timestamp
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE answers_logs(
    id_answer_log int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username varchar(10) NOT NULL,
    first_name varchar(10) NOT NULL,
    last_name varchar(10) NOT NULL,
    id varchar(10) NOT NULL,
    sku varchar(10) NOT NULL,
    time_update timestamp
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO answers(answer_key,answer_value,answer_type) 
VALUES 
('001','Este es un texto',1),
('002','imagen1.jpg',2),
('003','archivo1.pdf',3);

CREATE USER 'samm'@'localhost' IDENTIFIED BY 'samm.2019';
GRANT ALL PRIVILEGES ON samm_db.* TO 'samm'@'localhost';
FLUSH PRIVILEGES;