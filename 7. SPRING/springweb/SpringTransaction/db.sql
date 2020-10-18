
-- 트랜잭션

create table tblTran (
    seq number primary key,
    name varchar2(30) not null,
    point number default 100 not null
);

create sequence seqTran;

drop table tblComment;
drop table tblMemeber;
drop table tblBoard cascade CONSTRAINTS;

create table tblBoard (
    seq number primary key,
    subject varchar2(1000) not null,
    tseq number not null references tblTran(seq)    --FK
);

create sequence seqBoard;

select * from tblBoard;
select * from tblTran;

insert into tblTran values (seqTran.nextVal, '홍길동', default);

commit;


