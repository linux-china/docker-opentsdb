FROM lancope/hbase:0.98.16.1

run apt-get update
run apt-get -y install gnuplot
RUN wget -q -O opentsdb.deb https://github.com/OpenTSDB/opentsdb/releases/download/v2.2.0RC3/opentsdb-2.2.0RC3_all.deb
RUN dpkg -i opentsdb.deb && rm opentsdb.deb

ADD start.sh /usr/share/opentsdb/bin/

EXPOSE 4242

CMD /usr/share/opentsdb/bin/start.sh
