\set AUTOCOMMIT OFF
set client_encoding=SJIS;

insert into 会員 values('001', 20, 'B');
insert into 会員 values('002', 30, 'C');
insert into 会員 values('003', 60, 'A');
insert into 会員 values('004', 40, 'C');
insert into 会員 values('005', 40, 'B');
insert into 会員 values('006', 50, 'C');


insert into 社員B values(1, 'システム部', 'プログラマ');
insert into 社員B values(2, 'システム部', 'プログラマ');
insert into 社員B values(3, '営業部', '営業');
insert into 社員B values(4, '営業部', '営業');
insert into 社員B values(5, '企画部', 'スタッフ');
insert into 社員B values(6, '企画部', 'スタッフ');
insert into 社員B values(7, 'システム部', 'プログラマ');
insert into 社員B values(8, 'システム部', 'プログラマ');
insert into 社員B values(9, '企画部', 'プログラマ');


insert into 社員 values('O1553', '太田　由美', '女', to_date('10-3-1970', 'dd-mm-yyyy'), to_date('1-4-1990','dd-mm-yyyy'));
insert into 社員 values('S3781', '佐藤　義男', '男', to_date('20-11-1943','dd-mm-yyyy'), to_date('11-6-1975', 'dd-mm-yyyy'));
insert into 社員 values('O8665', '太田　由美', '女', to_date('13-10-1978','dd-mm-yyyy'), to_date('11-4-1999', 'dd-mm-yyyy'));


insert into 人事異動 values('O1553', '総務部', to_date('1-4-1990', 'dd-mm-yyyy'), '広報(社内報)', 69);
insert into 人事異動 values('O1553', '営業部', to_date('1-7-1998', 'dd-mm-yyyy'), '顧客管理', 72);
insert into 人事異動 values('S3781', '資材部', to_date('11-6-1975', 'dd-mm-yyyy'), '仕入在庫管理', 70);
insert into 人事異動 values('S3781', '経理部', to_date('1-7-1984', 'dd-mm-yyyy'), '資金計画', 81);
insert into 人事異動 values('S3781', '企画部', to_date('1-7-1993', 'dd-mm-yyyy'), '会社組織、分掌', 95);
insert into 人事異動 values('O8665', '秘書室', to_date('1-4-1999', 'dd-mm-yyyy'), '受付', 70);


insert into 商品 values('S101', 'A', 1200);
insert into 商品 values('S102', 'B',  450);
insert into 商品 values('S103', 'C', 9900);
insert into 商品 values('S104', 'D',  230);


insert into 売上明細 values('U001', to_date('10-2-2006', 'dd-mm-yyyy'), 'S101', 5, 7500);
insert into 売上明細 values('U002', to_date('25-2-2006', 'dd-mm-yyyy'), 'S104', 2, 4000);
insert into 売上明細 values('U002', to_date('10-2-2006', 'dd-mm-yyyy'), 'S101', 10, 15000);
insert into 売上明細 values('U003', to_date('5-3-2006', 'dd-mm-yyyy'), 'S103', 5, 500);
insert into 売上明細 values('U003', to_date('5-5-2006', 'dd-mm-yyyy'), 'S104', 8, 16000);


insert into 在庫 values('W001', 'S101', 100);
insert into 在庫 values('W001', 'S104', 34);
insert into 在庫 values('W002', 'S101', 2300);
insert into 在庫 values('W003', 'S101', 110);
insert into 在庫 values('W004', 'S103', 450);
insert into 在庫 values('W004', 'S104', 134);



insert into 製品B values('AB1805', 'CD-ROMドライブ', 15000);
insert into 製品B values('CC5001', 'ディジタルカメラ', 65000);
insert into 製品B values('MZ1000', 'プリンタA', 54000);
insert into 製品B values('XZ3000', 'プリンタB', 78000);
insert into 製品B values('ZZ9900', 'イメージスキャナ', 98000);

insert into 在庫B values('WH100', 'AB1805', 20);
insert into 在庫B values('WH100', 'CC5001', 200);
insert into 在庫B values('WH100', 'ZZ9900', 130);
insert into 在庫B values('WH101', 'AB1805', 150);
insert into 在庫B values('WH101', 'XZ3000', 30);
insert into 在庫B values('WH102', 'XZ3000', 20);
insert into 在庫B values('WH102', 'ZZ9900', 10);
insert into 在庫B values('WH103', 'CC5001', 40);

insert into 商品月間販売実績 values('S001', 150, 45000);
insert into 商品月間販売実績 values('S002', 250, 50000);
insert into 商品月間販売実績 values('S003', 150, 15000);
insert into 商品月間販売実績 values('S004', 400, 120000);
insert into 商品月間販売実績 values('S005', 400, 80000);
insert into 商品月間販売実績 values('S006', 500, 25000);
insert into 商品月間販売実績 values('S007', 50, 60000);

commit;
