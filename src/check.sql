create table T(
  A integer,
  B integer,
  constraint c check(A = 1 and B = 1)
);
insert into T values(0,1);
insert into T values(1,0);
insert into T values(1,1);
select * from T;

