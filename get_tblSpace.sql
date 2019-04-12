SELECT t.tablespace_name name
     , t.status
     , t.contents type
     , t.extent_management extmgt
     , t.allocation_type alloc
     , t.initial_extent/1024 init_kb
     , t.segment_space_management segmgt
     , TO_CHAR(NVL(d.bytes - NVL(f.bytes, 0), 0)/1024/1024,
'9,999,990.9') "USED(MB)"
     , TO_CHAR(NVL(d.bytes, 0)/1024/1024, '9,999,990.9') "TOTAL(MB)"
     , TO_CHAR(NVL(d.bytes - NVL(f.bytes, 0), 0)/(NVL(d.bytes, -1)/100),
'990.0') "USED(%)"
  FROM dba_tablespaces t
     , (SELECT tablespace_name, SUM(bytes) bytes FROM dba_data_files
GROUP BY tablespace_name) d
     , (SELECT tablespace_name, SUM(bytes) bytes FROM dba_free_space
GROUP BY tablespace_name) f
 WHERE t.tablespace_name = d.tablespace_name(+)
   AND t.tablespace_name = f.tablespace_name(+)
   AND NOT (t.extent_management = 'LOCAL' AND t.contents = 'TEMPORARY')
 UNION ALL
SELECT t.tablespace_name name
     , t.status
     , t.contents type
     , t.extent_management extmgt
     , t.allocation_type alloc
     , t.initial_extent/1024 init_kb
     , t.segment_space_management segmgt
     , TO_CHAR(NVL(f.bytes, 0)/1024/1024, '9,999,990.9') "USED(MB)"
     , TO_CHAR(NVL(d.bytes, 0)/1024/1024, '9,999,990.9') "TOTAL(MB)"
     , TO_CHAR(NVL(f.bytes/(d.bytes/100), 0), '990.0') "USED(%)"
  FROM dba_tablespaces t
     , (SELECT tablespace_name, SUM(bytes) bytes FROM dba_temp_files
GROUP BY tablespace_name) d
     , (SELECT tablespace_name, SUM(bytes_cached) bytes FROM
v$temp_extent_pool GROUP BY tablespace_name) f
 WHERE t.tablespace_name = d.tablespace_name(+)
   AND t.tablespace_name = f.tablespace_name(+)
   AND t.extent_management = 'LOCAL' AND t.contents = 'TEMPORARY'
 ORDER BY name
;

