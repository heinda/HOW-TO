# docker run -d -p 85:8080 -p 1521:1521 -v /home/ceresng/oracle/data:/u01/app/oracle -e DBCA_TOTAL_MEMORY=1024 sath89/oracle-ee-11g
export DATA_HOME=$HOME/oracle/11gdata
mkdir -p $DATA_HOME
chmod 777 $DATA_HOME

docker run -it -p 85:8080 -p 1521:1521 -v $DATA_HOME:/u01/app/oracle -e DBCA_TOTAL_MEMORY=1024 sath89/oracle-ee-11g

#hostname: localhost
#port: 1521
#sid: EE
#service name: EE.oracle.docker
#username: system
#password: oracle
