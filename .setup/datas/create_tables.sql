\set AUTOCOMMIT OFF
set client_encoding=SJIS;

create table if not exists dept (
    deptno  int constraint pk_dept primary key,
    dname   varchar(14),
    loc     varchar(13)
);

create table if not exists emp (
    empno   int constraint pk_emp primary key,
    ename   varchar(10),
    job     varchar(9),
    mgr     int,
    hiredate date,
    sal     numeric(7, 2),
    comm    numeric(7, 2),
    deptno  int constraint fk_emp references dept(deptno)
);



create table if not exists \ (
    R[h  char(4) constraint pk_busho primary key,
    ź      varchar(30)
);

create table if not exists Đő\ (
    ĐőÔ    char(6) constraint pk_shain primary key,
    Đőź      varchar(30),
    ŤĘ        char(4),
    śNú    date,
    ^        int,
    R[h  char(4),
    constraint fk_bushocode foreign key(R[h) references \(R[h)
);




create table if not exists ďő (
    ďőÔ 	char(3) constraint pk_ďő primary key,
    Nî		integer,
    O[v	varchar(4)
);


create table if not exists ĐőB (
    ĐőÔ	integer constraint pk_ĐőB primary key,
    ĺź		varchar(16),
    đź		varchar(16)
);


create table if not exists Đő (
	ĐőR[h	char(5) constraint pk_Đő primary key,
	Đőź		varchar(20),
	ŤĘ		varchar(4),
	śNú	date,
	üĐNú	date
);


create table if not exists lŮŽ (
	ĐőR[h		char(5),
	zŽĺ		varchar(20),
	zŽNú		date,
	SÎąŕe	varchar(20),
	ÎąŹŃ		numeric(4, 1),
	constraint pl_lŮŽ primary key (ĐőR[h, zŽNú)
);

create table if not exists ¤i (
	¤iÔ	char(4) constraint pk_¤i primary key,
	¤iź		varchar(12),
	Pż		numeric(9, 2)
);


create table if not exists ăž× (
	ăÔ	char(4),
	ăú		date,
	¤iÔ	char(4),
	Ę		integer,
	ăŕz	numeric(9, 2),
	constraint pk_ăž× primary key (ăÔ, ăú, ¤iÔ)
);


create table if not exists ÝÉ (
	qÉÔ	char(4),
	¤iÔ	char(4),
	ÝÉ		integer,
	constraint pk_ÝÉ primary key (qÉÔ, ¤iÔ)
);

create table if not exists ťiB (
    ťiÔ    char(6) primary key,
    ťiź      varchar(18),
    Pż        integer
);

create table if not exists ÝÉB (
    qÉR[h  char(6),
    ťiÔ    char(6),
    ÝÉ      integer
);

create table if not exists ¤iÔĚŔŃ (
    ¤iR[h  char(4),
    Ě    integer,
    Ěŕz  integer
);

commit;
