--create user tablespace
CREATE TABLESPACE ODI_USER
DATAFILE '/opt/app/oracle/oradata/odi_user.dbf' SIZE 200M
AUTOEXTEND ON MAXSIZE UNLIMITED;

--create user
CREATE USER ODI_USER
IDENTIFIED BY welcome1
DEFAULT TABLESPACE ODI_USER
TEMPORARY TABLESPACE TEMP;

--grant privileges
grant connect, resource, dba to ODI_USER;



create table ODI_USER.ORA_SALES(
   SALES_ID   NUMBER(5)  not null,
   OFFICE  VARCHAR2(50),
   SALES_PERS VARCHAR2(100),
   AGE        NUMBER(3),
   HIRE_DATE   VARCHAR2(50),
   constraint PK_ORA_SALES PRIMARY KEY (SALES_ID)
 );


create table ODI_USER.ORA_CUSTOMER(
   CUST_ID      NUMBER(10)      not null,
   RANK         VARCHAR2(2),
   GENDER        VARCHAR2(12),
   CUST_NAME    VARCHAR2(100),
   ADDRESS      VARCHAR2(100),
   PREFECTURE   VARCHAR2(12),
   PHONE        VARCHAR2(12),
   AGE          NUMBER(3),
   AGE_RANGE    VARCHAR2(12),
   SALES_PERS   VARCHAR2(100),
   CRE_DATE     DATE,
   UPD_DATE     DATE,
   constraint PK_ORA_CUSTOMER PRIMARY KEY (CUST_ID)
);



