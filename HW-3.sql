use 310brandon;

set foreign_key_checks = 0;
drop table student cascade;
drop table building cascade;
drop table apartment cascade;
set foreign_key_checks = 1;

create table student (
	id int(10),
    fname varchar(32) not null,
    lname varchar(32) not null,
    bid char(2),
    floor int(2),
    aptid char(1),
    primary key (id)
);

create table building (
	id char(2),
    name varchar(32),
    address varchar(64),
    primary key (id)
);

create table apartment (
	aptid char(1),
    floor int(2),
    bid char(2),
    capacity int(1),
    primary key (aptid, floor, bid)
);

insert into building values('B1', 'Jasper', '1 Kingsbridge Rd, Bronx, NY, 10463');
insert into building values('B2', 'Lee', '5 Corlear Ave, Bronx, NY, 10463');
insert into building values('B3', 'Overlook', '4 Irwin Ave, Bronx, NY, 10463');
insert into building values('B4', 'Majestic', '3 Waldo Ave, Bronx, NY, 10463');
insert into building values('B5', 'Horan', '2 Tibbet Ave, Bronx, NY, 10463');

insert into apartment values('A', 01, 'B1', 3);
insert into apartment values('B', 01, 'B1', 3);
insert into apartment values('B', 02, 'B1', 3);
insert into apartment values('C', 01, 'B2', 3);
insert into apartment values('A', 02, 'B2', 3);
insert into apartment values('D', 03, 'B3', 3);
insert into apartment values('B', 02, 'B5', 3);
insert into apartment values('A', 03, 'B4', 3);
insert into apartment values('A', 01, 'B5', 3);
insert into apartment values('C', 02, 'B3', 3);
insert into apartment values('A', 02, 'B1', 3);
insert into apartment values('A', 02, 'B4', 3);
insert into apartment values('B', 03, 'B3', 3);
insert into apartment values('C', 02, 'B4', 3);
insert into apartment values('A', 03, 'B1', 3);

insert into student values(1123456789, 'Brandon', 'Steidl', 'B1', 01, 'A');
insert into student values(1257203454, 'Michael', 'Smith', 'B1', 01, 'A');
insert into student values(1123483247, 'Matthew', 'Higgins', 'B1', 01, 'A');
insert into student values(1938252355, 'Quinn', 'Conroy', 'B1', 01, 'B');
insert into student values(1419283414, 'Ashley', 'Jones', 'B1', 02, 'B');
insert into student values(1341562943, 'Mackenzie', 'Williams', 'B1', 02, 'B');
insert into student values(1923485255, 'Olivia', 'Johnson', 'B1', 02, 'B');
insert into student values(1578723944, 'Dolores', 'Conrad', 'B2', 01, 'C');
insert into student values(1452378452, 'Juju', 'Smith-Schuster', 'B2', 02, 'A');
insert into student values(1425628469, 'Kevin', 'Smith', 'B2', 02, 'A');
insert into student values(1798279469, 'Ronald', 'Steidl', 'B2', 02, 'A');
insert into student values(1579692347, 'Patricia', 'Hanson', 'B2', 01, 'C');
insert into student values(1752934759, 'Samantha', 'Steidl', 'B2', 01, 'C');
insert into student values(1579495634, 'Amy', 'Hanson', 'B3', 03, 'D');
insert into student values(1572947359, 'Elise', 'Hanson', 'B3', 03, 'D');
insert into student values(1248572934, 'Nicholas', 'Pfeufer', 'B5', 02, 'B');
insert into student values(1234679769, 'Jessica', 'Pfeufer', 'B4', 03, 'A');
insert into student values(1673847934, 'Nathan', 'Hanson', 'B5', 02, 'B');
insert into student values(1952462664, 'Ben', 'Button', 'B5', 01, 'A');
insert into student values(1875923452, 'Peter', 'Pan', 'B3', 02, 'C');
insert into student values(1284357294, 'Alfred', 'Hitchcock', 'B1', 02, 'A');
insert into student values(1472948723, 'John', 'Hancock', 'B1', 02, 'A');
insert into student values(1294852053, 'Winslow', 'Taylor', 'B4', 02, 'A');
insert into student values(1487293452, 'George', 'Patton', 'B4', 02, 'A');
insert into student values(1582345243, 'Mike', 'Williams', 'B3', 03, 'B');
insert into student values(1234528234, 'John', 'Lennon', null, null, null);
insert into student values(1252875293, 'Paul', 'McCartney', null, null, null);
insert into student values(1572834592, 'Yellow', 'Submarine', null, null, null);
insert into student values(1572498577, 'Beatle', 'Guy', null, null, null);
insert into student values(1429872053, 'Other', 'Guy', null, null, null);
