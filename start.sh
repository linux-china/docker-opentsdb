#!/usr/bin/env bash
HBASE_ROOT_LOGGER=WARN,console HBASE_SECURITY_LOGGER=WARN,console /usr/local/hbase/bin/start-hbase.sh

if [ ! -d /var/lib/hbase/data/default/tsdb ] ; then
  echo "creating opentsdb table"
  COMPRESSION=NONE HBASE_HOME=/usr/local/hbase /usr/share/opentsdb/tools/create_table.sh
fi

/usr/share/opentsdb/bin/tsdb tsd --auto-metric
