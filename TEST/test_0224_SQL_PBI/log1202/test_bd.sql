CREATE TABLE SUPERVISOR (
ID_SUPERVISOR SERIAL PRIMARY KEY, -- ссылка на руководителя
SUPERVISOR VARCHAR(100) NOT NULL
)

--DROP TABLE SUPERVISOR

CREATE TABLE EMPLOYEE (
ID SERIAL PRIMARY KEY,
NAME VARCHAR(100) NOT NULL, -- имя
ID_SUPERVISOR INTEGER,
FOREIGN KEY (ID_SUPERVISOR) REFERENCES SUPERVISOR (ID_SUPERVISOR), -- ссылка на руководителя
BEGIN_DATE Date, -- дата приема на работу
END_DATE Date -- дата увольнения
)

--DROP TABLE EMPLOYEE

INSERT INTO SUPERVISOR (ID_SUPERVISOR, SUPERVISOR)
	VALUES
		(1001, 'Василий Петрович'),
		(1002, 'Татьяна Васильевна'),
		(1003, 'Петр Алексеевич'),
		(1005, 'Таисия Петровна')

		
INSERT INTO EMPLOYEE (ID, NAME, ID_SUPERVISOR, BEGIN_DATE, END_DATE)
	VALUES
		(1, 'Василий', 1002, '20.01.2020', '28.04.2023'),
		(2, 'Петр', 1002, '20.04.2020', '28.02.2023'),
		(3, 'Татьяна', 1001, '20.10.2019', '28.03.23'),
		(4, 'Нина', 1005, '20.06.2022', '28.09.2023'),
		(5, 'Александр', 1003, '20.02.2021', '28.07.2023'),
		(6, 'Никита', 1001, '20.03.2020', '28.08.2023'),
		(7, 'Ника', 1001, '20.03.2020', '28.02.2023'),
		(8, 'Ольга', 1005, '20.02.2021', '28.01.2023'),
		(9, 'Алексей', 1003, '20.07.2021', '28.03.2022'),
		(10, 'Наталья', 1003, '20.08.2021', '28.03.2023'),
		(11, 'Полина', 1001, '20.03.2023', '28.09.2023'),
		(12, 'Софья', 1002, '20.09.2022', '28.06.2023'),
		(13, 'Лиза', 1003, '20.06.2022', '28.09.2023'),
		(14, 'Иван', 1002, '20.04.2022', '28.05.2023'),
		(15, 'Виктор', 1005, '20.09.2022', '28.08.2023')
		
		
		
--Напишите SQL запрос, который возвращает:
--1. список имен всех сотрудников;

SELECT NAME
FROM EMPLOYEE

--2. количество сотрудников ;

SELECT count(NAME) 
FROM EMPLOYEE

--3. имена сотрудников, работающих на предприятии в определенную дату;

SELECT NAME
FROM EMPLOYEE
WHERE BEGIN_DATE > '20.09.2020' AND END_DATE < '28.07.2023'

--4. количество сотрудников, работающих на предприятии в определенную дату;

SELECT count(NAME) 
FROM EMPLOYEE
WHERE BEGIN_DATE > '20.09.2020' AND END_DATE < '28.07.2023'

--5. данные о сотрудниках с именем его руководителя для каждого сотрудника.

SELECT NAME, SUPERVISOR 
FROM EMPLOYEE E
JOIN SUPERVISOR S ON E.ID_SUPERVISOR = S.ID_SUPERVISOR

