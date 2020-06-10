

CREATE TABLE RESERVATION
(
  id                   INT                   NOT NULL,
  screening_id         INT                    not null,
  empioyee_reserved    INT,
  reservation_type_id  INT                     not null,
  reservation_contact  VARCHAR(1024),
  reserved             VARCHAR(1),
  empioyee_paid_id     INT                     not null,
  PAID                 VARCHAR(1),
  ACTIVE               VARCHAR(1),
  PRIMARY KEY(id),

);

CREATE TABLE RESERVATION_TYPE
(
  id              INT                       NOT NULL,
  reservation_ty  VARCHAR(32),
  PRIMARY KEY
 (id),
 );


CREATE TABLE SEAT_RESERVED
(
  id              INT                       NOT NULL,
  seat_id         INT                       not null,
  reservation_id  INT                       not null,
  screening_id    INT                       not null,
   PRIMARY KEY (id),

);



CREATE TABLE SEAT
(
  id             INT                        NOT NULL,
  row_            INT,
  seat_number         INT,
  auditorium_id  INT                        not null,
   PRIMARY KEY (id),

   
);


 CREATE TABLE AUDITORIUM
(
  id       INT                              NOT NULL,
  name     VARCHAR(32),
  seats_no  INT,
   PRIMARY KEY
 (id),

 );


 CREATE TABLE SCREENING
(
  id             INT                        NOT NULL,
  movie_id       INT              not null,
  auditorium_id  INT      not null,
   PRIMARY KEY (id),

 );


CREATE TABLE MOVIE
(
  id           INT                          NOT NULL,
  title        VARCHAR(256),
  director     VARCHAR(256)                     not null,
  cast         VARCHAR(1024)                     not null,
  description  VARCHAR(2048)                      not null,
  duration_min  INT                            not null,
   PRIMARY KEY
 (id),
 );



CREATE TABLE EMPLOYEE
(
  id        INT                            NOT NULL,
  username  VARCHAR(32),
  password  VARCHAR(100),
   PRIMARY KEY 
 (id),
 );


ALTER TABLE SEAT_RESERVED
 ADD FOREIGN KEY (SEAT_ID) 
 REFERENCES SEAT (id);
 
 
 ALTER TABLE SEAT_RESERVED
 ADD FOREIGN KEY (reservation_id) 
 REFERENCES RESERVATION(id);
 
 ALTER TABLE SEAT_RESERVED
 ADD FOREIGN KEY (screening_id) 
 REFERENCES SCREENING(id);
 
 ALTER TABLE RESERVATION
 ADD FOREIGN KEY (screening_id) 
 REFERENCES SCREENING(id);
 
 ALTER TABLE RESERVATION
 ADD FOREIGN KEY (empioyee_reserved) 
 REFERENCES EMPLOYEE(id);

 ALTER TABLE RESERVATION
 ADD FOREIGN KEY (reservation_type_id) 
 REFERENCES RESERVATION_TYPE(id);
 
 ALTER TABLE RESERVATION
 ADD FOREIGN KEY (empioyee_paid_id) 
 REFERENCES EMPLOYEE(id);

 
 ALTER TABLE SCREENING
 ADD FOREIGN KEY (movie_id) 
 REFERENCES MOVIE (id);
 
 ALTER TABLE SCREENING
 ADD CONSTRAINT SCREENING_
 FOREIGN KEY (auditorium_id) 
 REFERENCES AUDITORIUM (id);
 
 ALTER TABLE SEAT
 ADD FOREIGN KEY (auditorium_id) 
 REFERENCES AUDITORIUM (id);
 

Insert into EMPLOYEE (id,username,password)values (2,'ahmed','ahmed532')
Insert into EMPLOYEE (id,username,password)values (1,'nasr','nasr826');
Insert into EMPLOYEE (id,username,password)values (3,'taha','taha615');
Insert into EMPLOYEE (id,username,password)values (4,'mona','mona213');
Insert into EMPLOYEE (id,username,password)values (5,'mai','mai261');
Insert into EMPLOYEE (id,username,password)values (7,'noha','noha123261');


select * from EMPLOYEE;



Insert into MOVIE (id,title,director,cast,description,duration_min)values (1,'viking','mohamed','action','rohnkf',32)
Insert into MOVIE (id,title,director,cast,description,duration_min)values (2,'breaking bad','ahmed','advanng','fda',653)
Insert into MOVIE (id,title,director,cast,description,duration_min)values (3,'got','fighting','mona','jhtjy',43)
Insert into MOVIE (id,title,director,cast,description,duration_min)values (4,'lucifer','fighting','mona','jhtjy',43)
Insert into MOVIE (id,title,director,cast,description,duration_min)values (5,'beaky','fighting','mona','jhtjy',43)
Insert into MOVIE (id,title,director,cast,description,duration_min)values (6,'meaky','jhfu','alaa','jhtjy',86)




select * from MOVIE;



Insert into RESERVATION_TYPE (id,reservation_ty)values (1,'by phone')
Insert into RESERVATION_TYPE (id,reservation_ty)values (2,'online')
Insert into RESERVATION_TYPE (id,reservation_ty)values (3,'online')
Insert into RESERVATION_TYPE (id,reservation_ty)values (4,'online')
Insert into RESERVATION_TYPE (id,reservation_ty)values (5,'order')
Insert into RESERVATION_TYPE (id,reservation_ty)values (7,'ticket')



select * from RESERVATION_TYPE;


Insert into AUDITORIUM (id,name,seats_no)values (1,'three',23)
Insert into AUDITORIUM (id,name,seats_no)values (2,'ahmed',54)
Insert into AUDITORIUM (id,name,seats_no)values (3,'khaled',35)
Insert into AUDITORIUM (id,name,seats_no)values (4,'mona',32)
Insert into AUDITORIUM (id,name,seats_no)values (5,'mai',76)


select * from AUDITORIUM;

Insert into SCREENING (id,movie_id,auditorium_id)values (1,1,1)
Insert into SCREENING (id,movie_id,auditorium_id)values (2,2,2)
Insert into SCREENING (id,movie_id,auditorium_id)values (3,3,3)
Insert into SCREENING (id,movie_id,auditorium_id)values (4,4,4)
Insert into SCREENING (id,movie_id,auditorium_id)values (5,5,5)
Insert into SCREENING (id,movie_id,auditorium_id)values (7,4,3)




select * from SCREENING;

Insert into SEAT (id,row_,seat_number,auditorium_id)values (1,1,1,1)
Insert into SEAT (id,row_,seat_number,auditorium_id)values (2,2,2,2)
Insert into SEAT (id,row_,seat_number,auditorium_id)values (3,3,3,3)
Insert into SEAT (id,row_,seat_number,auditorium_id)values (4,4,4,4)
Insert into SEAT (id,row_,seat_number,auditorium_id)values (5,5,5,5)


select * from SEAT;



Insert into RESERVATION (id,screening_id,empioyee_reserved,reservation_type_id,reservation_contact,reserved,empioyee_paid_id,PAID,ACTIVE)values (1,1,1,1,'ahmed@yahoo.com-012890796','t',1,'t','t')
Insert into RESERVATION (id,screening_id,empioyee_reserved,reservation_type_id,reservation_contact,reserved,empioyee_paid_id,PAID,ACTIVE)values (2,2,2,2,'mohamed@yahoo.com-011890796','t',2,'t','f')
Insert into RESERVATION (id,screening_id,empioyee_reserved,reservation_type_id,reservation_contact,reserved,empioyee_paid_id,PAID,ACTIVE)values (4,4,4,4,'taha@yahoo.com-010890796','t',3,'t','f')
Insert into RESERVATION (id,screening_id,empioyee_reserved,reservation_type_id,reservation_contact,reserved,empioyee_paid_id,PAID,ACTIVE)values (3,3,3,3,'mona@yahoo.com-012335796','t',4,'t','f')
Insert into RESERVATION (id,screening_id,empioyee_reserved,reservation_type_id,reservation_contact,reserved,empioyee_paid_id,PAID,ACTIVE)values (5,5,5,5,'mai@yahoo.com-012420796','t',5,'t','f')


select * from RESERVATION;


Insert into SEAT_RESERVED (id,seat_id,reservation_id,screening_id)values (1,1,1,1);
Insert into SEAT_RESERVED (id,seat_id,reservation_id,screening_id)values (2,2,2,2)
Insert into SEAT_RESERVED (id,seat_id,reservation_id,screening_id)values (3,3,3,3)
Insert into SEAT_RESERVED (id,seat_id,reservation_id,screening_id)values (4,4,4,4)
Insert into SEAT_RESERVED (id,seat_id,reservation_id,screening_id)values (5,5,5,5)

select * from SEAT_RESERVED;


select seat_number from SEAT;

Select * from SEAT where id = (select id from AUDITORIUM where name='ahmed')

Select title, director from MOVIE 
Where id =1
Group by title, director;

Select count (reservation_type_id) from RESERVATION;

Select * from SCREENING where id = (select id from movie where title='viking')
Select * from SEAT where auditorium_id = (select id from AUDITORIUM where name='ahmed')
Select * from RESERVATION where reservation_type_id = (select id from RESERVATION_TYPE where reservation_ty='single')

select  MOVIE.title, SCREENING.movie_id
from  MOVIE
Inner join SCREENING on MOVIE.id = SCREENING.movie_id;

select  MOVIE.title, SCREENING.movie_id
from  MOVIE
left join SCREENING on MOVIE.id = SCREENING.movie_id;

select  MOVIE.title, SCREENING.movie_id
from  SCREENING
right join MOVIE on   SCREENING.movie_id = MOVIE.id;

select  MOVIE.title, SCREENING.movie_id
from  SCREENING
right join MOVIE on   SCREENING.movie_id = MOVIE.id;

SELECT MOVIE.title,SCREENING.movie_id
FROM MOVIE
FULL OUTER JOIN SCREENING ON MOVIE.id=SCREENING.movie_id
ORDER BY MOVIE.title;

