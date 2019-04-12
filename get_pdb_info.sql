select pdb_id, pdb_name, status from cdb_pdbs;
select con_id, name, open_mode ,restricted, open_time from v$pdbs;
-- currently connected PDB
show con_id con_name user
