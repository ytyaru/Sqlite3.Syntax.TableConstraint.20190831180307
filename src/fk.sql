pragma foreign_keys = ON;
create table P(
  A integer,
  B integer,
  constraint pk primary key(A,B)
);
create table C(
  A integer,
  B integer,
  constraint fk foreign key(A,B) references P(A,B)
);
insert into C values(0,0); -- 外部制約エラー（親ない）

insert into P values(0,0);
insert into C values(0,0);
.echo on
select * from P;
select * from C;

