drop table ORA_SALES cascade constraints;
drop table ORA_CUSTOMER cascade constraints;

create table ORA_SALES(
   SALES_ID   NUMBER(12)  not null,
   OFFICE  VARCHAR2(50),
   SALES_PERS VARCHAR2(100),
   AGE        NUMBER(12),
   HIRE_DATE   VARCHAR2(50),
   constraint PK_ORA_SALES PRIMARY KEY (SALES_ID)
 );


create table ORA_CUSTOMER(
   CUST_ID      NUMBER(12)      not null,
   RANK         VARCHAR2(2),
   GENDER        VARCHAR2(50),
   CUST_NAME    VARCHAR2(100),
   ADDRESS      VARCHAR2(100),
   PREFECTURE   VARCHAR2(50),
   PHONE        VARCHAR2(50),
   AGE          NUMBER(12),
   AGE_RANGE    VARCHAR2(50),
   SALES_PERS   VARCHAR2(100),
   CRE_DATE     DATE,
   UPD_DATE     DATE,
   constraint PK_ORA_CUSTOMER PRIMARY KEY (CUST_ID)
);



