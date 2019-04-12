set long 10000;
select dbms_metadata.get_ddl('TABLE','INV') from dual;
