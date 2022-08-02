FROM debian

RUN mkdir scripts
COPY scripts/version_check.sh scripts

RUN apt-get update
RUN apt-get install build-essential bison byacc g++ m4 make python3 -y
RUN apt-get install gawk texinfo -y

RUN chmod +x scripts/version_check.sh