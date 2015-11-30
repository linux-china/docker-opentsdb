OpenTSDB Docker Image
======================================

### Build

docker build -t lancope/opentsdb:0.98.16.1 .


### usage in docker compose

     opentsdb:
       image: lancope/opentsdb:0.98.16.1
       ports:
          - "4242:4242"
