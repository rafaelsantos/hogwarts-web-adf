CREATE USER hogwarts IDENTIFIED BY hogwarts;
GRANT CONNECT, RESOURCE TO hogwarts;

CREATE TABLE SCHOOL_INFORMATION 
(
  SCHOOL_NAME VARCHAR2(50) 
, SCHOOL_ADDRESS VARCHAR2(200) 
, SCHOOL_EMAIL VARCHAR2(50) 
, SCHOOL_PHONE VARCHAR2(20) 
, SCHOOL_FAX VARCHAR2(20) 
, SCHOOL_PRINCIPAL_NAME VARCHAR2(50) 
, SCHOOL_PRINCIPAL_USERNAME VARCHAR2(20) 
, SCHOOL_PRINCIPAL_PASWORD VARCHAR2(20) 
);


CREATE TABLE TEACHERS 
(
  TEACHER_ID NUMBER NOT NULL 
, TEACHER_NAME VARCHAR2(50) 
, TEACHER_PHONE VARCHAR2(20) 
, TEACHER_ADDRESS VARCHAR2(200) 
, TEACHER_DATE_OF_BIRTH DATE 
, TEACHER_GENDAR VARCHAR2(20) 
, CONSTRAINT TEACHERS_PK PRIMARY KEY 
  (
    TEACHER_ID 
  )
  ENABLE 
);


CREATE TABLE STUDENTS 
(
  STUDENT_ID NUMBER NOT NULL 
, STUDENT_NAME VARCHAR2(50) 
, STUDENT_GENDAR VARCHAR2(20) 
, STUDENT_ADDRESS VARCHAR2(200) 
, STUDENT_DOB DATE 
, STUDENT_PARENT_NAME VARCHAR2(50) 
, STUDENT_PARENT_EMAIL VARCHAR2(50) 
, STUDENT_PARENT_PHONE VARCHAR2(20)
, STUDENT_CREATED_DATE DATE 
, CONSTRAINT STUDENTS_PK PRIMARY KEY 
  (
    STUDENT_ID 
  )
  ENABLE 
);


CREATE TABLE CLASSROOMS 
(
  ROOM_NUMBER NUMBER NOT NULL 
, GRADE_NUMBER VARCHAR2(20) 
, CONSTRAINT CLASSROOMS_PK PRIMARY KEY 
  (
    ROOM_NUMBER 
  )
  ENABLE 
);


CREATE TABLE TEACHER_CLASSES 
(
  TEACHER_FK NUMBER 
, CLASSROOM_FK NUMBER 
);


CREATE TABLE STUDENT_CLASS 
(
  STUDENT_FK NUMBER 
, CLASSROOM_FK NUMBER 
);


CREATE TABLE STUDENT_RESULT 
(
  STUDENT_FK NUMBER 
, RESULT_YEAR VARCHAR2(20) 
, GRADE_NUMBER VARCHAR2(20) 
, FINAL_RESULT VARCHAR2(20) 
);

