SET TIMING ON
SET LINES 120 PAGES 100
COL username FORM A30
COL account_status FORM A30
COL lock_data FORM A20
COL created FORM A20
---
SELECT
  username
 ,account_status
 ,lock_date
 ,created
FROM dba_users
ORDER BY username;
