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



create table if not exists 部署表 (
    部署コード  char(4) constraint pk_busho primary key,
    部署名      varchar(30)
);

create table if not exists 社員表 (
    社員番号    char(6) constraint pk_shain primary key,
    社員名      varchar(30),
    性別        char(4),
    生年月日    date,
    給与        int,
    部署コード  char(4),
    constraint fk_bushocode foreign key(部署コード) references 部署表(部署コード)
);




create table if not exists 会員 (
    会員番号 	char(3) constraint pk_会員 primary key,
    年齢		integer,
    グループ	varchar(4)
);


create table if not exists 社員B (
    社員番号	integer constraint pk_社員B primary key,
    部門名		varchar(16),
    役割名		varchar(16)
);


create table if not exists 社員 (
	社員コード	char(5) constraint pk_社員 primary key,
	社員名		varchar(20),
	性別		varchar(4),
	生年月日	date,
	入社年月日	date
);


create table if not exists 人事異動 (
	社員コード		char(5),
	配属部門		varchar(20),
	配属年月日		date,
	担当勤務内容	varchar(20),
	勤務成績		numeric(4, 1),
	constraint pl_人事異動 primary key (社員コード, 配属年月日)
);

create table if not exists 商品 (
	商品番号	char(4) constraint pk_商品 primary key,
	商品名		varchar(12),
	単価		numeric(9, 2)
);


create table if not exists 売上明細 (
	売上番号	char(4),
	売上日		date,
	商品番号	char(4),
	数量		integer,
	売上金額	numeric(9, 2),
	constraint pk_売上明細 primary key (売上番号, 売上日, 商品番号)
);


create table if not exists 在庫 (
	倉庫番号	char(4),
	商品番号	char(4),
	在庫数		integer,
	constraint pk_在庫 primary key (倉庫番号, 商品番号)
);

create table if not exists 製品B (
    製品番号    char(6) primary key,
    製品名      varchar(18),
    単価        integer
);

create table if not exists 在庫B (
    倉庫コード  char(6),
    製品番号    char(6),
    在庫数      integer
);

create table if not exists 商品月間販売実績 (
    商品コード  char(4),
    総販売数    integer,
    総販売金額  integer
);

commit;
