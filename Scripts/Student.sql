CREATE SEQUENCE SEQ_STUDENT;


CREATE TABLE TBL_STUDENT(
   U_ID VARCHAR2(200) NOT NULL,
   U_PWD VARCHAR2(200) NOT NULL,
   U_PWD_Q VARCHAR2(200) NOT NULL,
   U_PWD_A VARCHAR2(200) NOT NULL,
   U_LAST_NAME VARCHAR2(100) NOT NULL,
   U_FIRST_NAME VARCHAR2(100) NOT NULL,
   U_EMAIL VARCHAR2(200) NOT NULL,
   U_BIRTH VARCHAR2(300) NOT NULL,
   U_PHONE VARCHAR2(100) NOT NULL,   
   U_ZIPCODE VARCHAR2(1000) NOT NULL,
   U_ADDRESS VARCHAR2(1000) NOT NULL,
   U_ADDRESS_DETAIL VARCHAR2(1000) NOT NULL
);
DROP TABLE TBL_STUDENT ;
ALTER TABLE TBL_STUDENT ADD CONSTRAINT PK_STUDENT PRIMARY KEY(U_ID);
SELECT * FROM TBL_STUDENT;

SELECT * FROM TBL_STUDENT;
SELECT * FROM TBL_ACADEMY;

CREATE TABLE TBL_STUDENT(
   U_ID VARCHAR2(200) NOT NULL
);