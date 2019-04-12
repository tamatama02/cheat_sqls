-- (sample) : @alt_dbfile_addFiles_tmp.sql /u01/dbfile/o12c/temp02.dbf 5000m;
alter tablespace temp add tempfile '&1' size &2
