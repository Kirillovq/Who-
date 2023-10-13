INSERT INTO cashier(id, surname) VALUES (1,'Агапов');
INSERT INTO cashier(ID, SURNAME) VALUES (2,'Дмитриенко');
INSERT INTO cashier(ID, SURNAME) VALUES (3,'Жолобов');

INSERT INTO client(ID, ADDRESS, PHONE_NUMBER, SURNAME) VALUES(1,'Ленина 1','652355','Фролов');
INSERT INTO client(ID, ADDRESS, PHONE_NUMBER, SURNAME) VALUES(2,'Ленина 2','652356','Смирнов');
INSERT INTO client(ID, ADDRESS, PHONE_NUMBER, SURNAME) VALUES(3,'Ленина 3','652357','Мирнов');

INSERT INTO directing_films(id, directing_number, provider_number, date_of_delivery, rental_start_date, rental_end_date, price_delivery) values (1,1,1,'31:12:1999','31:12:1999','31:12:1999',20);
INSERT INTO directing_films(id, directing_number, provider_number, date_of_delivery, rental_start_date, rental_end_date, price_delivery) values (2,2,2,'01:01:2000','01:01:2000','01:01:2000',20);
INSERT INTO directing_films(id, directing_number, provider_number, date_of_delivery, rental_start_date, rental_end_date, price_delivery) values (3,3,3,'02:01:2000','02:01:2000','02:01:2000',30);

INSERT INTO list_films(id, film_number, directing_number, film_name, film_time) values (1,1,1,'Фрик хоррор','19:30:00');
INSERT INTO list_films(id, film_number, directing_number, film_name, film_time) values (2,2,2,'Индийский хоррор','20:00:00');
INSERT INTO list_films(id, film_number, directing_number, film_name, film_time) values (3,3,3,'Российский хоррор','23:30:00');

INSERT INTO schedule_seance(id,session_date,session_time,hall_number,film_number) values(1,'01.01.2000','19:30:00',1,1);
INSERT INTO schedule_seance(id,session_date,session_time,hall_number,film_number) values(2,'02.01.2000','20:00:00',2,2);
INSERT INTO schedule_seance(id,session_date,session_time,hall_number,film_number) values(3,'01.01.2000','21:30:00',3,3);

INSERT INTO ticket_sales(id,payment_number,client_number,cashier_number,the_payment_date,time_payment,price_payment) values (1,1,1,1,'01.01.2000','19:30:00',300);
INSERT INTO ticket_sales(id,payment_number,client_number,cashier_number,the_payment_date,time_payment,price_payment) values (2,2,2,2,'02.01.2000','20:00:00',300);
INSERT INTO ticket_sales(id,payment_number,client_number,cashier_number,the_payment_date,time_payment,price_payment) values (3,3,3,3,'03.01.2000','21:30:00',300);

INSERT INTO ticket_list(id,ticket_number,payment_number,session_data,session_time,hall_number,order_number,place_number) values(1,1,1,'01.01.2000','19:30:00',1,1,1);
INSERT INTO ticket_list(id,ticket_number,payment_number,session_data,session_time,hall_number,order_number,place_number) values(2,2,2,'02.01.2000','20:00:00',2,2,2);
INSERT INTO ticket_list(id,ticket_number,payment_number,session_data,session_time,hall_number,order_number,place_number) values(3,3,3,'03.01.2000','21:30:00',3,3,3);

INSERT INTO provider(id,directing_number,film_number,time_film) VALUES (1,1,20,'19:30:00');
INSERT INTO provider(id,directing_number,film_number,time_film) values(2,2,21,'20:00:00');
INSERT INTO provider(id,directing_number,film_number,time_film) values(3,3,22,'21:30:00');
