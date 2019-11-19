FROM ubuntu:12.04
WORKDIR "/opt"
COPY razorsql8_4_0_linux_x64.zip .
RUN apt-get update
RUN apt-get install unzip
RUN apt-get install default-jre -y
RUN unzip razorsql8_4_0_linux_x64.zip
CMD ["/opt/razorsql/razorsql.sh"]