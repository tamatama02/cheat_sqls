SELECT * FROM dba_ind_columns where table_name = UPPER('&table_name') order by index_name, column_position ASC;

