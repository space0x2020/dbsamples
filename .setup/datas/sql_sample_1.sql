\set AUTOCOMMIT OFF
set client_encoding=SJIS;

insert into ïõ values('004', 40, 'C');
insert into ïõ values('003', 60, 'A');
insert into ïõ values('001', 20, 'B');
insert into ïõ values('005', 40, 'B');
insert into ïõ values('006', 50, 'C');
insert into ïõ values('002', 30, 'C');


insert into ÐõB values(3, 'cÆ', 'cÆ');
insert into ÐõB values(2, 'VXe', 'vO}');
insert into ÐõB values(9, 'éæ', 'vO}');
insert into ÐõB values(4, 'cÆ', 'cÆ');
insert into ÐõB values(1, 'VXe', 'vO}');
insert into ÐõB values(6, 'éæ', 'X^bt');
insert into ÐõB values(7, 'VXe', 'vO}');
insert into ÐõB values(8, 'VXe', 'vO}');
insert into ÐõB values(5, 'éæ', 'X^bt');


insert into Ðõ values('O8665', '¾c@Rü', '', to_date('13-10-1978','dd-mm-yyyy'), to_date('11-4-1999', 'dd-mm-yyyy'));
insert into Ðõ values('S3781', '²¡@`j', 'j', to_date('20-11-1943','dd-mm-yyyy'), to_date('11-6-1975', 'dd-mm-yyyy'));
insert into Ðõ values('O1553', '¾c@Rü', '', to_date('10-3-1970', 'dd-mm-yyyy'), to_date('1-4-1990','dd-mm-yyyy'));


insert into lÙ® values('O1553', '±', to_date('1-4-1990', 'dd-mm-yyyy'), 'Lñ(Ðàñ)', 69);
insert into lÙ® values('O1553', 'cÆ', to_date('1-7-1998', 'dd-mm-yyyy'), 'ÚqÇ', 72);
insert into lÙ® values('S3781', 'o', to_date('1-7-1984', 'dd-mm-yyyy'), 'àvæ', 81);
insert into lÙ® values('S3781', 'Þ', to_date('11-6-1975', 'dd-mm-yyyy'), 'düÝÉÇ', 70);
insert into lÙ® values('S3781', 'éæ', to_date('1-7-1993', 'dd-mm-yyyy'), 'ïÐgDAª¶', 95);
insert into lÙ® values('O8665', 'éº', to_date('1-4-1999', 'dd-mm-yyyy'), 'ót', 70);


insert into ¤i values('S103', 'C', 9900);
insert into ¤i values('S102', 'B',  450);
insert into ¤i values('S101', 'A', 1200);
insert into ¤i values('S104', 'D',  230);


insert into ã¾× values('U002', to_date('10-2-2006', 'dd-mm-yyyy'), 'S101', 10, 15000);
insert into ã¾× values('U002', to_date('25-2-2006', 'dd-mm-yyyy'), 'S104', 2, 4000);
insert into ã¾× values('U003', to_date('5-5-2006', 'dd-mm-yyyy'), 'S104', 8, 16000);
insert into ã¾× values('U001', to_date('10-2-2006', 'dd-mm-yyyy'), 'S101', 5, 7500);
insert into ã¾× values('U003', to_date('5-3-2006', 'dd-mm-yyyy'), 'S103', 5, 500);


insert into ÝÉ values('W001', 'S104', 34);
insert into ÝÉ values('W001', 'S101', 100);
insert into ÝÉ values('W003', 'S101', 110);
insert into ÝÉ values('W004', 'S104', 134);
insert into ÝÉ values('W004', 'S103', 450);
insert into ÝÉ values('W002', 'S101', 2300);



insert into »iB values('CC5001', 'fBW^J', 65000);
insert into »iB values('MZ1000', 'v^A', 54000);
insert into »iB values('XZ3000', 'v^B', 78000);
insert into ÝÉB values('WH100', 'CC5001', 200);
insert into »iB values('ZZ9900', 'C[WXLi', 98000);

insert into »iB values('AB1805', 'CD-ROMhCu', 15000);
insert into ÝÉB values('WH101', 'AB1805', 150);
insert into ÝÉB values('WH100', 'AB1805', 20);
insert into ÝÉB values('WH100', 'ZZ9900', 130);
insert into ÝÉB values('WH102', 'ZZ9900', 10);
insert into ÝÉB values('WH102', 'XZ3000', 20);
insert into ÝÉB values('WH101', 'XZ3000', 30);
insert into ÝÉB values('WH103', 'CC5001', 40);

insert into ¤iÔÌÀÑ values('S002', 250, 50000);
insert into ¤iÔÌÀÑ values('S005', 400, 80000);
insert into ¤iÔÌÀÑ values('S001', 150, 45000);
insert into ¤iÔÌÀÑ values('S003', 150, 15000);
insert into ¤iÔÌÀÑ values('S006', 500, 25000);
insert into ¤iÔÌÀÑ values('S007', 50, 60000);
insert into ¤iÔÌÀÑ values('S004', 400, 120000);

commit;
