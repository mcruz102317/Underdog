#!/bin/bash

ETL_DIR=/home/cloudera/project/etl_scripts
HIVE_FILE_DIR=${ETL_DIR}/flight_delay_raw.hql
LOCAL_DIR=/home/cloudera/project/flume_sink
HDFS_RAW_DIR=/user/cloudera/project/flume_sink
HDFS_INGESTED_DIR=/user/cloudera/project/ingested
TABLE_NAME=flight_delay_raw

hive -f ${HIVE_FILE_DIR}

hdfs dfs -mkdir ${HDFS_INGESTED_DIR}

hdfs dfs -cp ${HDFS_RAW_DIR}/* ${HDFS_INGESTED_DIR}


hive -e "LOAD DATA INPATH '${HDFS_RAW_DIR}/*' OVERWRITE INTO TABLE ${TABLE_NAME}"
