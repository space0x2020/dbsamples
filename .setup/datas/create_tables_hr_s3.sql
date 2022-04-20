create table if not exists departments (
    department_id     int constraint pk_departments primary key,
    department_name   varchar(30) not null,
    manager_id        int,
    location_id       int
);

create table if not exists jobs (
    job_id            varchar(10) primary key,
    job_title         varchar(35) not null,
    min_salary        number(6),
    max_salary        number(6)
);

create table if not exists employees (
    employee_id      int primary key,
    first_name       varchar(20) not null,
    last_name        varchar(25) not null,
    email            varchar(25) not null unique,
    phone_number     varchar(20),
    hire_date        date        not null,
    job_id           varchar(10) not null,
    salary           number(8, 2) check(salary > 0),
    commission_pct   number(2, 2),
    manager_id       int,
    department_id    int,
    foreign key (department_id) references departments(department_id),
    foreign key (job_id) references jobs(job_id)
);
