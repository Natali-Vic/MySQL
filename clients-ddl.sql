-- создание БД с удалением старой
DROP DATABASE IF EXISTS clients_db_web422;
CREATE DATABASE clients_db_web422;
-- переключение контекста на созданную (пересозданную) БД
USE clients_db_web422;
-- создание таблицы клиентов
CREATE TABLE clients_t (
    id INT NOT NULL AUTO_INCREMENT,
    display_name_f NVARCHAR(200) NOT NULL,
    email_f NVARCHAR(200) NOT NULL,
    birthday_f DATE NOT NULL,
    phone_number_f CHAR(10) NOT NULL,
    -- ограничения
    PRIMARY KEY(id),
    UNIQUE(email_f),
    UNIQUE(phone_number_f)
);
-- ограничение на email
ALTER TABLE clients_t 
ADD CONSTRAINT `clients_t.email_validation`
    CHECK (email_f REGEXP "^[a-zA-Z0-9][a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]*?[a-zA-Z0-9._-]?@[a-zA-Z0-9][a-zA-Z0-9._-]*?[a-zA-Z0-9]?\\.[a-zA-Z]{2,63}$");
-- ограничение на phone_number_f
ALTER TABLE clients_t 
ADD CONSTRAINT `clients_t.phone_number_validation`
    CHECK (phone_number_f REGEXP "^[0-9]{10}$");
