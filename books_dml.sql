SET SQL_SAFE_UPDATES = 0;
-- переключение контекста на БД
USE books_db;
-- удалить все записи из таблицы
DELETE FROM books_table WHERE id > 0;
-- добавить данные 
INSERT INTO books_table (code, author, name_book, city_of_publication, year_of_publication, pages_number)
VALUES
    ('681.1 П44', 'Подбельский В.В.', 'Программирование', 'Москва', '2003', '600'),
    ('681.2 П52', 'Макконнелл С.', 'Совершенный', 'Вашингтон', '2012', '500'),
	('615.3 П13', 'Новиков Л.В.', 'Дискретная математика', 'Москва', '2000', '300'),
	('387.1 Л44', 'Иванов И.И.', 'Введение в PHP', 'Москва', '2007', '526'),
	('622.6 Д34', 'Петров П.П', 'Теория баз данных', 'Санкт-Петербург', '2010', '200'),
	('291.2 М45', 'Мальцев А.А.', 'Алгебра', 'Барнаул', '1998', '95'),
    ('781.5 Д77', 'Фролов Н.А.', 'Кибернетика', 'Новосибирск', '2001', '120');
-- вывод вставленных данных
SELECT * FROM books_table;
-- выбор записей с количеством страниц более 500 и добавление в шифр буквы "В" в начало
UPDATE books_table SET code = CONCAT('В', code) WHERE pages_number > 500;
-- выбор записей, где город издания Москва
SELECT * FROM books_table WHERE city_of_publication = 'Москва';
---- удаление записей, где город издания Москва
DELETE FROM books_table WHERE city_of_publication = 'Москва';
SELECT * FROM books_table;
