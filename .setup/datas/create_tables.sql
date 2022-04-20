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



create table if not exists �����\ (
    �����R�[�h  char(4) constraint pk_busho primary key,
    ������      varchar(30)
);

create table if not exists �Ј��\ (
    �Ј��ԍ�    char(6) constraint pk_shain primary key,
    �Ј���      varchar(30),
    ����        char(4),
    ���N����    date,
    ���^        int,
    �����R�[�h  char(4),
    constraint fk_bushocode foreign key(�����R�[�h) references �����\(�����R�[�h)
);




create table if not exists ��� (
    ����ԍ� 	char(3) constraint pk_��� primary key,
    �N��		integer,
    �O���[�v	varchar(4)
);


create table if not exists �Ј�B (
    �Ј��ԍ�	integer constraint pk_�Ј�B primary key,
    ���喼		varchar(16),
    ������		varchar(16)
);


create table if not exists �Ј� (
	�Ј��R�[�h	char(5) constraint pk_�Ј� primary key,
	�Ј���		varchar(20),
	����		varchar(4),
	���N����	date,
	���ДN����	date
);


create table if not exists �l���ٓ� (
	�Ј��R�[�h		char(5),
	�z������		varchar(20),
	�z���N����		date,
	�S���Ζ����e	varchar(20),
	�Ζ�����		numeric(4, 1),
	constraint pl_�l���ٓ� primary key (�Ј��R�[�h, �z���N����)
);

create table if not exists ���i (
	���i�ԍ�	char(4) constraint pk_���i primary key,
	���i��		varchar(12),
	�P��		numeric(9, 2)
);


create table if not exists ���㖾�� (
	����ԍ�	char(4),
	�����		date,
	���i�ԍ�	char(4),
	����		integer,
	������z	numeric(9, 2),
	constraint pk_���㖾�� primary key (����ԍ�, �����, ���i�ԍ�)
);


create table if not exists �݌� (
	�q�ɔԍ�	char(4),
	���i�ԍ�	char(4),
	�݌ɐ�		integer,
	constraint pk_�݌� primary key (�q�ɔԍ�, ���i�ԍ�)
);

create table if not exists ���iB (
    ���i�ԍ�    char(6) primary key,
    ���i��      varchar(18),
    �P��        integer
);

create table if not exists �݌�B (
    �q�ɃR�[�h  char(6),
    ���i�ԍ�    char(6),
    �݌ɐ�      integer
);

create table if not exists ���i���Ԕ̔����� (
    ���i�R�[�h  char(4),
    ���̔���    integer,
    ���̔����z  integer
);

commit;
