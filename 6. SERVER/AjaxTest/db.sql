create table zipcode  (
   seq                  NUMBER(10)                        not null,
   zipcode              VARCHAR2(50),
   sido                 VARCHAR2(50),
   gugun                VARCHAR2(50),
   dong                 VARCHAR2(50),
   bunji                VARCHAR2(50),
   constraint PK_ZIPCODE primary key (seq)
)

select * from zipcode;

select * from zipcode where dong like '%' || '역삼' || '%' order by seq asc;

-- 고양이 위치
create table tblCat (
    seq number primary key,
    catid varchar2(30) not null,
    x number not null,
    y number not null
);

insert into tblCat values (1, 'cat1', 0, 0);
insert into tblCat values (2, 'cat2', 220, 110);
insert into tblCat values (3, 'cat3', 150, 280);

commit;

select * from tblCat;

select * from
(select a.*, rownum as rnum from
(select seq, subject, name, regdate from vwBoard order by seq desc) a)
where rnum >=1 and rnum <=10;