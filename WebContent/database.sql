create schema restaurant;

create table staff
(
staff_id number(5) primary key,
staff_name varchar(255) not null,
staff_gender varchar(255) not null,
staff_address varchar(255) not null,
staff_phone varchar(255) not null,
staff_category varchar(255) not null
);

create sequence customer_id_seq start with 1 nocache;

insert into customer values(customer_id_seq.nextval, '1', 'eqmal',
'male', 'Malaysia', '0124312221', 'staff');

insert into customer values(customer_id_seq.nextval, '1', 'ismareezal',
'male', 'Malaysia', '0124311112', 'Manager');

commit;