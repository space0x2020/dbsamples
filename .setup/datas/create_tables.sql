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
    ¼      varchar(30)
);

create table if not exists Ðõ\ (
    ÐõÔ    char(6) constraint pk_shain primary key,
    Ðõ¼      varchar(30),
    «Ê        char(4),
    ¶Nú    date,
    ^        int,
    R[h  char(4),
    constraint fk_bushocode foreign key(R[h) references \(R[h)
);




create table if not exists ïõ (
    ïõÔ 	char(3) constraint pk_ïõ primary key,
    Nî		integer,
    O[v	varchar(4)
);


create table if not exists ÐõB (
    ÐõÔ	integer constraint pk_ÐõB primary key,
    å¼		varchar(16),
    ð¼		varchar(16)
);


create table if not exists Ðõ (
	ÐõR[h	char(5) constraint pk_Ðõ primary key,
	Ðõ¼		varchar(20),
	«Ê		varchar(4),
	¶Nú	date,
	üÐNú	date
);


create table if not exists lÙ® (
	ÐõR[h		char(5),
	z®å		varchar(20),
	z®Nú		date,
	SÎ±àe	varchar(20),
	Î±¬Ñ		numeric(4, 1),
	constraint pl_lÙ® primary key (ÐõR[h, z®Nú)
);

create table if not exists ¤i (
	¤iÔ	char(4) constraint pk_¤i primary key,
	¤i¼		varchar(12),
	P¿		numeric(9, 2)
);


create table if not exists ã¾× (
	ãÔ	char(4),
	ãú		date,
	¤iÔ	char(4),
	Ê		integer,
	ãàz	numeric(9, 2),
	constraint pk_ã¾× primary key (ãÔ, ãú, ¤iÔ)
);


create table if not exists ÝÉ (
	qÉÔ	char(4),
	¤iÔ	char(4),
	ÝÉ		integer,
	constraint pk_ÝÉ primary key (qÉÔ, ¤iÔ)
);

create table if not exists »iB (
    »iÔ    char(6) primary key,
    »i¼      varchar(18),
    P¿        integer
);

create table if not exists ÝÉB (
    qÉR[h  char(6),
    »iÔ    char(6),
    ÝÉ      integer
);

create table if not exists ¤iÔÌÀÑ (
    ¤iR[h  char(4),
    Ì    integer,
    Ìàz  integer
);

commit;
