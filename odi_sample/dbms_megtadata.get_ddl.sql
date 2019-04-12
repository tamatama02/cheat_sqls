set long 10000
set pages 0
select DBMS_METADATA.GET_DDL('TABLE','ORA_CUSTOMER','DEV_STAGE') from dual;
