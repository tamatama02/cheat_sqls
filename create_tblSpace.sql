--
-- usage: SQL> @create_tblSpace USERS2 '/opt/oracle/oradata/ORCL/users02.dbf'
--
DEFINE TBLSPACE_NAME=&1
DEFINE DATAFILE_NAME=&2

create tablespace &&TBLSPACE_NAME
  datafile '&&DATAFILE_NAME'
  size 100M
  extent management local
  uniform size 128k
  segment space management auto;

-- REFERENCE: if compressed needed, add row like that "default row store compress advanced;"
