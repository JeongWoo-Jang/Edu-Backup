-- db.sql

-- 회원 테이블
drop table tblMember cascade constraints;
drop sequence seqMember;

create table tblMember (
    seq number primary key,                 -- 번호(PK)
    id varchar2(30) not null,               -- 아이디
    name varchar2(30) not null,             -- 이름
    email varchar2(100) not null,           -- 이메일
    pw varchar2(30) not null,               -- 암호
    pic varchar2(50) not null,              -- 프로필 사진
    regdate date default sysdate            -- 가입일
);

create sequence seqMember;

select * from tblMember;

delete from tblMember;
commit;

-- 게시판
create table tblBoard (
    seq number primary key,                 -- 글번호(PK)
    subject varchar2(1000) not null,        -- 제목
    content varchar2(2000) not null,        -- 내용
    regdate date default sysdate not null,  -- 등록일
    readcount number default 0 not null,    -- 조회수
    heart number default 0 not null,        -- 추천
    mseq number not null references tblMember(seq) -- 회원번호(FK)
);

create sequence seqBoard;

insert into tblBoard (seq, subject, content, regdate, readcount, heart, mseq)
    values (seqBoard.nextVal, '게시판 테스트입니다.', '글내용입니다.', default, default, default, 5);
    
select * from tblBoard;
commit;

select seq, subject, (select name from tblMember where seq = tblBoard.mseq) as name, regdate, readcount from tblBoard;