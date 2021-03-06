FROM library/postgres

RUN apt-get update
RUN apt-get -y install unzip ruby dos2unix
RUN apt-get install nano
RUN apt-get install telnet

RUN export POSTGRES_USER=postgres
RUN export POSTGRES_PASSWORD=postgres

RUN mkdir /data
COPY install.sql /data/
COPY update_csvs.rb /data/
COPY *.csv /data/
RUN cd /data && \
    ruby update_csvs.rb && \
    rm update_csvs.rb

COPY install.sh /docker-entrypoint-initdb.d/
RUN dos2unix /docker-entrypoint-initdb.d/*.sh
