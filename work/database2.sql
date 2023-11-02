create database studentdb;

create table student(
    student_id serial primary key,
    first_name varchar(100),
    last_name varchar(100),
    date_of_birth varchar(100),
    email varchar(100),
    phone_number varchar(15),
    adress varchar(100)
);

create table cources(
    cources_id serial primary key,
    cource_name varchar(100),
    cource_description varchar(200)
);

create table enrollments(
    enrollment_id serial primary key,
    fk_student_id int references student(student_id)
    on delete cascade on update cascade,
    fk_cource_id int references cources(cources_id)
    on delete cascade on update cascade
)