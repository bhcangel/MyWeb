create table users(

    id varchar2(30) not null,
    pw varchar2(30) not null,
    name varchar2(30) not null,
    phone1 varchar2(30),
    phone2 varchar2(30),
    phone3 varchar2(30),
    email1 varchar2(30),
    email2 varchar2(30),
    address1 varchar2(200),
    address2 varchar2(200),
    regdate date default sysdate
);
alter table users add CONSTRAINT users_pk primary key (id);



create table board(

    regdate date default sysdate,
    bno number(10,0) not null,
    writer varchar2(50) not null,
    title varchar2(200),
    content varchar2(2000)

);
alter table board add CONSTRAINT board_bno_pk PRIMARY KEY (bno);
create SEQUENCE board_seq INCREMENT by 1 start with 1;
