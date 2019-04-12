create user c##dba identified by Welcome1;
create role c##dbaprivs container = all;
grant dba to c##dbaprivs container = all;
grant c##dbaprivs to c##dba container = all;
