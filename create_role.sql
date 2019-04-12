DEFINE ROLE_NAME=&1
--
grant select any table to &&ROLE_NAME;
grant create any table to &&ROLE_NAME;
grant create any view to &&ROLE_NAME;
grant create synonym to &&ROLE_NAME;
grant create database link to &&ROLE_NAME;
