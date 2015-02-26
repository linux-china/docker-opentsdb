FROM lancope/hbase

RUN wget -q -O opentsdb.deb https://github.com/OpenTSDB/opentsdb/releases/download/v2.1.0RC1/opentsdb-2.1.0RC1_all.deb
RUN dpkg -i opentsdb.deb && rm opentsdb.deb

ADD start.sh /usr/share/opentsdb/bin/

EXPOSE 4242

CMD /usr/share/opentsdb/bin/start.sh
