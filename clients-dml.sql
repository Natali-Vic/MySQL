-- переключение контекста на БД
USE clients_db_web422;
-- удалить данные
TRUNCATE TABLE clients_t;
-- добавить тестовые данные в изначальном виде
INSERT INTO clients_t (
    display_name_f,
    email_f,
    birthday_f,
    phone_number_f
) VALUES
    ('John Doe', 'john_doe@gmail.com', '2000-01-01', '8005553535'),
    ('James Brown', 'brown@mail.ru', '1995-12-25', '0123456789'),
    ('Mike Mikenson', 'mike1999_2@gmail.com', '2010-12-30', '9998887766');
-- вывод вставленных данных
SELECT * FROM clients_t;
