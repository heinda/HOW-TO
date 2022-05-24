# Oracle on a docker

> docker exec -it $containerDBName /bin/bash
> export ORACLE_SID=ORCLCDB
> sqlplus / as sydba


SQL> show con_name;

CON_NAME
------------------------------
CDB$ROOT


# show all PDBS

 show pdbs;

 CON_ID CON_NAME			  OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
2 PDB$SEED			  READ ONLY  NO
3 ORCLPDB1			  READ WRITE NO



# drop a PDB including all datafiles

alter pluggable database ORCLPDB1 close immediate;

DROP PLUGGABLE DATABASE ORCLPDB1  INCLUDING DATAFILES;
