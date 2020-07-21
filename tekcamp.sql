CREATE TABLE tekcampers like students.tekcamp01;

INSERT INTO tekcampers
SELECT *
FROM students.tekcamp01;

update tekcampers set gender=education, education=gender;


insert into tekcampers
    (first_name, last_name, gender, education)
values
    ("Aaron", "White", "M", NULL),
    ("Devon", "Brewster", "M", NULL),
    ("Kevin", "Keesee", "M" , " High
School Diploma"),
    ("Tyler", "Clements", "M", NULL),
    ("Vimala", "Murthy", "F", "Masters Degree"),
    ("Cody", "Clark", "M", NULL),
    ("Gowtham", "Katta", "M", " Bachelors Degree"),
    ("John", "Bozarov", "M", NULL),
    ("Justin", "Cheng", "M", "Some College"),
    ("Monica", "Howard", "F", NULL);

Alter table tekcampers add serial serial FIRST;

alter tekcampers drop column id

update tekcampers set gender = 'M' where serial in (2,15,22,24);

update tekcampers set gender = 'F' where serial in (4);

update tekcampers set education = 'Bachelors Degree' where serial in (1,6,16,18,4,34,5,11);

update tekcampers set education = 'High School Diploma' where serial in (14,30);

update tekcampers set education = 'Associates Degree' where serial in (8,17);

update tekcampers set education = 'Masters Degree' where serial in (3, 32,21);

update tekcampers set education = 'Some College' where serial in (19,24,12,7,33,36);

delete from tekcampers where serial in (26,9,20);

select * from tekcampers where length(first_name) > 7;

select * from tekcampers order by first_name;

select * from tekcampers order by last_name;

select * from tekcampers where gender = 'M';

select * from tekcampers where gender = 'M';

select * from tekcampers where education="Masters Degree";

select * from tekcampers where education="Bachelors Degree";

select * from tekcampers where education="Associates Degree";

select * from tekcampers where education IS NULL;

create table ta_mark like tekcampers;

INSERT into ta_mark select * from tekcampers where serial in (8,27,21,23,25,28,30,31,33,34,35,36);

create table hobbies (id int NOT NULL AUTO_INCREMENT, hobby VARCHAR (25) NOT NULL, PRIMARY KEY (id));

 insert into hobbies values
        (1, "Eating"),
        (2, "Sleeping"),
        (3, "Video Games"),
        (4, "Golfing"),
        (5, "Cattle Rustling"),
        (6, "Gardening"),
        (7, "Working Out"),
        (8, "Pickle Ball"),
        (9, "Jiu Jitsu"),
        (10, "Writing"),
        (11 , "Coding"),
        (12, "Listening to Music");


Alter table tekcampers add HobbyID int;

Alter table tekcampers add FOREIGN KEY (HobbyID) REFERENCES hobbies(id);

/*Random hobbie assigned because I dont have time to wait for people to respond. */
update tekcampers set HobbyID = (SELECT FLOOR(RAND()*(12-1+1)+1));







Alter table tekcampers add bootcamp varchar (50);

Alter table ta_mark add bootcamp varchar (50);

select ta_mark.first_name, ta_mark.last_name, tekcampers.HobbyID, hobbies.hobby from ta_mark left join tekcampers on tekcampers.serial = ta_mark.serial join hobbies on hobbies.id = tekcampers.HobbyID;