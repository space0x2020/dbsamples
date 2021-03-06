INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (40,'OPERATIONS','BOSTON');
INSERT INTO DEPT VALUES (30,'SALES','CHICAGO');

INSERT INTO EMP VALUES
    (7521,'WARD','SALESMAN',7698,date('1981-02-22'),1250,500,30);
INSERT INTO EMP VALUES
    (7902,'FORD','ANALYST',7566,date('1981-12-03'),3000,NULL,20);
INSERT INTO EMP VALUES
    (7876,'ADAMS','CLERK',7788,date('1987-05-23'),1100,NULL,20);
INSERT INTO EMP VALUES
    (7499,'ALLEN','SALESMAN',7698,date('1981-02-20'),1600,300,30);
INSERT INTO EMP VALUES
    (7788,'SCOTT','ANALYST',7566,date('1987-04-19'),3000,NULL,20);
INSERT INTO EMP VALUES
    (7782,'CLARK','MANAGER',7839,date('1981-06-09'),2450,NULL,10);
INSERT INTO EMP VALUES
    (7698,'BLAKE','MANAGER',7839,date('1981-05-01'),2850,NULL,30);
INSERT INTO EMP VALUES
    (7654,'MARTIN','SALESMAN',7698,date('1981-09-28'),1250,1400,30);
INSERT INTO EMP VALUES
    (7844,'TURNER','SALESMAN',7698,date('1981-09-08'),1500,0,30);
INSERT INTO EMP VALUES
    (7839,'KING','PRESIDENT',NULL,date('1981-11-17'),5000,NULL,10);
INSERT INTO EMP VALUES
    (7566,'JONES','MANAGER',7839,date('1981-04-02'),2975,NULL,20);
INSERT INTO EMP VALUES
    (7934,'MILLER','CLERK',7782,date('1982-01-23'),1300,NULL,10);
INSERT INTO EMP VALUES
    (7900,'JAMES','CLERK',7698,date('1981-12-03'),950,NULL,30);
INSERT INTO EMP VALUES
    (7369,'SMITH','CLERK',7902,date('1980-12-17'),800,NULL,20);


insert into 部署表 values('0003', '開発部');
insert into 部署表 values('0001', '総務部');
insert into 部署表 values('0002', '営業部');


insert into 社員表 values('000005', '高橋五郎', '男', date('1982-11-06'), 210000, '0001');
insert into 社員表 values('000001', '山田一郎', '男', date('1950-03-25'), 350000, '0002');
insert into 社員表 values('000004', '田中良子', '女', date('1978-01-18'), 250000, '0003');
insert into 社員表 values('000003', '佐藤三郎', '男', date('1961-07-03'), 280000, '0003');
insert into 社員表 values('000002', '鈴木花子', '女', date('1956-07-18'), 320000, '0001');
