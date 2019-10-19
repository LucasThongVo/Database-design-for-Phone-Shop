
DROP DATABASE phone_store;
CREATE DATABASE phone_store;

DROP FUNCTION IF EXISTS find_cheapest_phone_with_black_color;
DROP TABLE IF EXISTS BILL;
DROP TABLE IF EXISTS CUSTOMER_STAFF;
DROP TABLE IF EXISTS PHONE;
DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS STAFF;

CREATE TABLE PHONE(
        ID serial primary key,
        operating_system varchar(20),
        producer varchar(20),
        model varchar(20),
        size int,
        color varchar(10),
        name varchar(50),
        price money
);

CREATE TABLE STAFF(
        ID_staff serial primary key,
        full_name varchar(40),
        phone_number varchar(20) not null unique,
        date_of_birth date,
        start_date_of_work date
);

CREATE TABLE CUSTOMER(
        ID_customer serial primary key,
        full_name varchar(40),
        phone_number varchar(20) not null unique,
        date_of_birth date,
        address varchar(50),
        registration_date date
);

CREATE TABLE CUSTOMER_STAFF(
        ID_customer int references CUSTOMER(ID_customer),
        ID_staff int references STAFF(ID_staff)
);

CREATE TABLE BILL(
        date_of_purchase timestamp default current_date,
        ID_bill serial primary key,
        ID_customer int references CUSTOMER(ID_customer) ON DELETE CASCADE ON UPDATE CASCADE,
        ID_phone int references PHONE(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

insert into phone(operating_system, producer, model, size, color, name, price) values ('IOS', 'APPLE', 'IPHONE 6',32,'RED','IPHONE 6',16000000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('IOS', 'APPLE', 'IPHONE 6',64,'RED','IPHONE 6',17000000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('IOS', 'APPLE', 'IPHONE 6',16,'WHITE','IPHONE 6',14000000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('IOS', 'APPLE', 'IPHONE 6',32,'WHITE','IPHONE 6',15550000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('IOS', 'APPLE', 'IPHONE 6',64,'WHITE','IPHONE 6',18000000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('IOS', 'APPLE', 'IPHONE 6',16,'BLACK','IPHONE 6',13000000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('IOS', 'APPLE', 'IPHONE 6',32,'BLACK','IPHONE 6',13000000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('IOS', 'APPLE', 'IPHONE 6',64,'BLACK','IPHONE 6',17000000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'SAMSUNG', 'GALAXY A',64,'BLACK','Samsung Galaxy A50s',7790000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'SAMSUNG', 'GALAXY S',512,'BLACK','Samsung Galaxy S10 PLUS',22990000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'SAMSUNG', 'GALAXY NOTE',256,'PINK','Samsung Galaxy Note 10',22990000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'SAMSUNG', 'GALAXY NOTE',128,'BLACK','Samsung Galaxy Note 9',18490000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'SAMSUNG', 'GALAXY A',128,'BLACK','Samsung Galaxy A70',9290000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'SAMSUNG', 'GALAXY A',128,'BLACK','Samsung Galaxy A7',7990000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'SAMSUNG', 'GALAXY A',64,'BLACK','Samsung Galaxy A50',6290000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'HUAWEI', 'P',128,'BLACK','Huawei P30 Lite',6020000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'HUAWEI', 'P',128,'BLACK','Huawei P30',16990000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'HUAWEI', 'P',256,'BLACK','Huawei P30 Pro',22990000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'HUAWEI', 'Y',64,'BLACK','Huawei Y9',4990000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'HUAWEI', 'NOVA',128,'BLACK','Huawei Nova 3i',5390000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'HUAWEI', 'NOVA',128,'WHITE','Huawei Nova 3i',4490000);
insert into phone(operating_system, producer, model, size, color, name, price) values ('ANDROID', 'HUAWEI', 'Y',64,'BLUE','Huawei Y7 Pro',3140000);

/**/
insert into STAFF(full_name,phone_number,date_of_birth,start_date_of_work) values ('Nguyen Nhu Nhut','0927345678','13/04/1997','13/04/2013');
insert into STAFF(full_name,phone_number,date_of_birth,start_date_of_work) values ('Le Thi Phi Yen','0987567390','21/04/1998', '20/06/2015');
insert into STAFF(full_name,phone_number,date_of_birth,start_date_of_work) values ('Nguyen Van B','0997047382','27/04/1977','14/07/2014');
insert into STAFF(full_name,phone_number,date_of_birth,start_date_of_work) values ('Ngo Thanh Tuan','0913758498','24/06/2000','08/09/2016');
insert into STAFF(full_name,phone_number,date_of_birth,start_date_of_work) values ('Nguyen Thi Truc Thanh','0918590387','20/07/2009','16/12/2017');
/**/
insert into CUSTOMER(full_name,address,phone_number,date_of_birth,registration_date) values ('Nguyen Van A','731, Tran Hung Dao, Q 5, Tp HCM','08823451','22/10/1960', '22/10/2010');
insert into CUSTOMER(full_name,address,phone_number,date_of_birth,registration_date) values ('Tran Ngoc Han','23/5, Nguyen Trai, Q 5, Tp HCM','0908256478','03/04/1974', '30/07/2017');
insert into CUSTOMER(full_name,address,phone_number,date_of_birth,registration_date) values ('Tran Ngoc Linh','45, Nguyen Canh Chan, Q 1, Tp HCM','0938776266','12/06/1980','05/08/2016');
insert into CUSTOMER(full_name,address,phone_number,date_of_birth,registration_date) values ('Tran Minh Long','50/34 Le Dai Hanh, Q 10, Tp HCM','0917325476','09/03/1965', '02/10/2015');
insert into CUSTOMER(full_name,address,phone_number,date_of_birth,registration_date) values ('Le Nhat Minh','34, Truong Dinh, Q 3, Tp HCM','08246108','10/03/1950', '28/10/2018');
insert into CUSTOMER(full_name,address,phone_number,date_of_birth,registration_date) values ('Le Hoai Thuong','227, Nguyen Van Cu, Q 5, Tp HCM','08631738','31/12/1981', '24/11/2013');
insert into CUSTOMER(full_name,address,phone_number,date_of_birth,registration_date) values ('Nguyen Van Tam','32/3, Tran Binh Trong, Q 5, Tp HCM','0916783565','06/04/1971', '01/12/2010');
insert into CUSTOMER(full_name,address,phone_number,date_of_birth,registration_date) values ('Phan Thi Thanh','45/2, An Duong Vuong, Q 5, Tp HCM','0938435756','10/01/1971','13/12/2014');
insert into CUSTOMER(full_name,address,phone_number,date_of_birth,registration_date) values ('Le Ha Vinh','873, Le Hong Phong, Q 5, Tp HCM','08654763','03/09/1979','14/01/2016');
insert into CUSTOMER(full_name,address,phone_number,date_of_birth,registration_date) values ('Ha Duy Lap','34/34B, Nguyen Trai, Q 1, Tp HCM','08768904','02/05/1983', '16/01/2017');
/**/

insert into CUSTOMER_STAFF(ID_staff,ID_customer) values(1,1);
insert into BILL(ID_customer, ID_phone) values (1,1);
insert into BILL(ID_customer, ID_phone) values (1,2);
insert into BILL(ID_customer, ID_phone) values (1,10);
insert into BILL(ID_customer, ID_phone) values (1,11);
insert into BILL(ID_customer, ID_phone) values (1,12);        


DROP FUNCTION IF EXISTS find_cheapest_phone_with_black_color;
CREATE OR REPLACE FUNCTION find_cheapest_phone_with_black_color() RETURNS money AS $$ -- here start procedural part
DECLARE
    rec RECORD;
    lowest_price_phone money default 92233720368547758.07;
BEGIN
    FOR rec IN SELECT color, price FROM PHONE 
    WHERE color = 'BLACK'
    LOOP 
           IF lowest_price_phone>rec.price THEN lowest_price_phone = rec.price; 
           END IF;
    END LOOP;
    RETURN lowest_price_phone;
END;
$$ LANGUAGE plpgsql;
SELECT size, color, model,price FROM PHONE WHERE color = 'BLACK' and price = find_cheapest_phone_with_black_color();
