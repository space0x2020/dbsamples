drop table if exists fk_test_dept;
create table fk_test_dept (
    deptid  int primary key,
    dname   varchar(30) not null
);
insert into fk_test_dept values(3, '大阪');
insert into fk_test_dept values(4, '名古屋');
insert into fk_test_dept values(1, '東京');
insert into fk_test_dept values(2, '横浜');

drop table if exists fk_test_floor;
create table fk_test_floor (
    fid     int primary key,
    fname   varchar(10)
);
insert into fk_test_floor values(3, '3F');
insert into fk_test_floor values(4, '4F');
insert into fk_test_floor values(1, '1F');
insert into fk_test_floor values(2, '2F');

drop table if exists fk_test_room;
create table fk_test_room (
    rid     int primary key,
    rname   varchar(10)
);
insert into fk_test_room values(4, 'Room-4');
insert into fk_test_room values(1, 'Romm-1');
insert into fk_test_room values(3, 'Room-3');
insert into fk_test_room values(2, 'Room-2');

drop table if exists fk_test_emp;
create table fk_test_emp (
    empid   int primary key,
    ename   varchar(30) not null,
    deptid  int,
    fid     int references fk_test_floor(fid),
    rid     int references fk_test_room(rid) on delete cascade,
    constraint fk_test_tmp_fk1 foreign key (deptid) references fk_test_dept(deptid) on delete set null
);
insert into fk_test_emp values(2, 'JUDY', 1, 2, 1);
insert into fk_test_emp values(5, 'ADAMS', 3, NULL, NULL);
insert into fk_test_emp values(3, 'JERRY', 2, 4, 3);
insert into fk_test_emp values(1, 'TOM', 4, 3, 2);
insert into fk_test_emp values(4, 'MARY', 3, 2, NULL);

-- test
-- delete from fk_test_floor where fid = 4; -> ERROR
-- delete from fk_test_room where rid = 3;  -> deleted empid=3
-- delete from fk_test_dept where deptid = 4; -> set deptid = null empid=1
