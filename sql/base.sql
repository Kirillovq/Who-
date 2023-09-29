create table if not exists ticket_list(
    id integer not null primary key UNIQUE,
    ticket_number integer not null ,
    payment_number integer not null,
    session_data date not null,
    session_time time not null,
    hall_number integer not null,
    order_number integer not null,
    place_number int not null,
    foreign key (payment_number)
        references ticket_sales (payment_number)
        on delete set null on update no action,
    foreign key (session_data)
        references schedule_seance(session_date)
        on delete set null on update no action,
    foreign key (session_time)
        references schedule_seance(session_time)
        on delete set null on update no action,
    foreign key (hall_number)
        references schedule_seance(hall_number)
        on delete set null on update no action);

create table if not exists  ticket_sales(
    id integer not null primary key UNIQUE,
    payment_number integer not null,
    client_number integer not null,
    cashier_number integer not null,
    the_payment_date date not null,
    time_payment time not null,
    price_payment integer not null,
    foreign key (cashier_number)
        references cashier(id)
        on delete set null on update no action,
    foreign key (client_number)
        references client(id)
        on delete set null on update no action);

create table if not exists cashier(
    id integer not null primary key UNIQUE,
    surname varchar(50) not null);

create table if not exists schedule_seance(
    id integer not null primary key UNIQUE,
    session_date date not null,
    session_time time not null,
    hall_number integer not null,
    film_number integer,
    foreign key (film_number)
        references list_films(id)
        on delete set null on update no action);

create table if not exists  directing_films(
    id integer not null primary key UNIQUE,
    directing_number integer not null,
    provider_number integer not null,
    date_of_delivery date not null,
    rental_start_date date not null,
    rental_end_date date,
    price_delivery integer,
    foreign key (provider_number)
        references provider(id)
        on delete set null on update no action);

create table if not exists  client(
    id integer not null primary key UNIQUE,
    address varchar(50),
    phone_number varchar(50),
    surname varchar(50) not null);

create table if not exists list_films(
    id integer not null primary key UNIQUE,
    film_number integer not null,
    directing_number integer not null,
    film_name varchar(50) not null,
    film_time time not null,
    foreign key (directing_number)
        references directing_films(id)
        on delete set null on update no action);

create table if not exists provider(
    id integer not null primary key UNIQUE,
    directing_number integer not null,
    film_number integer not null,
    time_film time not null);

