DEFINE USER_NAME=&1
alter user &&USER_NAME password expire account lock;
