--
-- usage: SQL> @create_tblSpaceBigFile BIGDATA1 '/opt/oracle/oradata/ORCL/bigfiles01.dbf' 1G
--
define TBLSPACE_NAME=&1
define DBFILE=&2
define FILE_SIZE=&3
--
create bigfile tablespace &&TBLSPACE_NAME
  datafile '&&DBFILE'
  size &&FILE_SIZE
  extent management local
  uniform size 8M
  segment space management auto;

