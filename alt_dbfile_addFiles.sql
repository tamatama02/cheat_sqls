-- @alt_dbfile_addFiles.sql USERS /opt/oracle/oradata/ORCL/users01_2.dbf 512M

DEFINE TBLSPACE_NAME=&1
DEFINE FILE_NAME=&2
DEFINE FILE_SIZE=&3

alter tablespace &&TBLSPACE_NAME
     add datafile '&&FILE_NAME' size &&FILE_SIZE;


