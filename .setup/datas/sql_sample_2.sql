\set AUTOCOMMIT OFF
set client_encoding=SJIS;

insert into ďő values('006', 50, 'C');
insert into ďő values('002', 30, 'C');
insert into ďő values('004', 40, 'C');
insert into ďő values('001', 20, 'B');
insert into ďő values('003', 60, 'A');
insert into ďő values('005', 40, 'B');


insert into ĐőB values(1, 'VXe', 'vO}');
insert into ĐőB values(5, 'éć', 'X^bt');
insert into ĐőB values(3, 'cĆ', 'cĆ');
insert into ĐőB values(4, 'cĆ', 'cĆ');
insert into ĐőB values(7, 'VXe', 'vO}');
insert into ĐőB values(6, 'éć', 'X^bt');
insert into ĐőB values(8, 'VXe', 'vO}');
insert into ĐőB values(9, 'éć', 'vO}');
insert into ĐőB values(2, 'VXe', 'vO}');


insert into Đő values('O1553', 'žc@Rü', '', to_date('10-3-1970', 'dd-mm-yyyy'), to_date('1-4-1990','dd-mm-yyyy'));
insert into Đő values('O8665', 'žc@Rü', '', to_date('13-10-1978','dd-mm-yyyy'), to_date('11-4-1999', 'dd-mm-yyyy'));

insert into Đő values('S3781', '˛Ą@`j', 'j', to_date('20-11-1943','dd-mm-yyyy'), to_date('11-6-1975', 'dd-mm-yyyy'));

insert into lŮŽ values('O1553', 'ą', to_date('1-4-1990', 'dd-mm-yyyy'), 'Lń(Đŕń)', 69);
insert into lŮŽ values('O1553', 'cĆ', to_date('1-7-1998', 'dd-mm-yyyy'), 'ÚqÇ', 72);
insert into lŮŽ values('O8665', 'éş', to_date('1-4-1999', 'dd-mm-yyyy'), 'ót', 70);
insert into lŮŽ values('S3781', 'o', to_date('1-7-1984', 'dd-mm-yyyy'), 'ŕvć', 81);
insert into lŮŽ values('S3781', 'éć', to_date('1-7-1993', 'dd-mm-yyyy'), 'ďĐgDAŞś', 95);
insert into lŮŽ values('S3781', 'Ţ', to_date('11-6-1975', 'dd-mm-yyyy'), 'düÝÉÇ', 70);


insert into ¤i values('S101', 'A', 1200);
insert into ¤i values('S103', 'C', 9900);
insert into ¤i values('S104', 'D',  230);
insert into ¤i values('S102', 'B',  450);


insert into ăž× values('U001', to_date('10-2-2006', 'dd-mm-yyyy'), 'S101', 5, 7500);
insert into ăž× values('U003', to_date('5-5-2006', 'dd-mm-yyyy'), 'S104', 8, 16000);
insert into ăž× values('U002', to_date('10-2-2006', 'dd-mm-yyyy'), 'S101', 10, 15000);
insert into ăž× values('U002', to_date('25-2-2006', 'dd-mm-yyyy'), 'S104', 2, 4000);
insert into ăž× values('U003', to_date('5-3-2006', 'dd-mm-yyyy'), 'S103', 5, 500);


insert into ÝÉ values('W004', 'S104', 134);
insert into ÝÉ values('W001', 'S104', 34);
insert into ÝÉ values('W003', 'S101', 110);
insert into ÝÉ values('W002', 'S101', 2300);
insert into ÝÉ values('W001', 'S101', 100);
insert into ÝÉ values('W004', 'S103', 450);



insert into ÝÉB values('WH100', 'CC5001', 200);
insert into ťiB values('ZZ9900', 'C[WXLi', 98000);
insert into ťiB values('CC5001', 'fBW^J', 65000);
insert into ťiB values('XZ3000', 'v^B', 78000);

insert into ÝÉB values('WH100', 'AB1805', 20);
insert into ťiB values('AB1805', 'CD-ROMhCu', 15000);
insert into ťiB values('MZ1000', 'v^A', 54000);
insert into ÝÉB values('WH103', 'CC5001', 40);
insert into ÝÉB values('WH100', 'ZZ9900', 130);
insert into ÝÉB values('WH101', 'XZ3000', 30);
insert into ÝÉB values('WH102', 'XZ3000', 20);
insert into ÝÉB values('WH102', 'ZZ9900', 10);
insert into ÝÉB values('WH101', 'AB1805', 150);

insert into ¤iÔĚŔŃ values('S001', 150, 45000);
insert into ¤iÔĚŔŃ values('S007', 50, 60000);
insert into ¤iÔĚŔŃ values('S004', 400, 120000);
insert into ¤iÔĚŔŃ values('S005', 400, 80000);
insert into ¤iÔĚŔŃ values('S006', 500, 25000);
insert into ¤iÔĚŔŃ values('S002', 250, 50000);
insert into ¤iÔĚŔŃ values('S003', 150, 15000);

commit;
