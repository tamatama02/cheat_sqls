DEFINE USER_NAME=&1
DEFINE PASS=&2
DEFINE TBL_SPC_USR=users
DEFINE TBL_SPC_TMP=temp
--
create user &&USER_NAME identified by &&PASS
default tablespace &&TBL_SPC_USR
temporary tablespace &&TBL_SPC_TMP
quota unlimited on &&TBL_SPC_USR;
grant dba,connect,resource to &&USER_NAME;
