FROM eclipse-temurin:8u352-b08-jdk-alpine

RUN apk update && apk add --no-cache libc6-compat perl

RUN mkdir /usr/local/async-profiler/ &&\
      wget -O /usr/local/async-profiler/async-profiler.tar.gz https://github.com/jvm-profiling-tools/async-profiler/releases/download/v1.5/async-profiler-1.5-linux-x64.tar.gz &&\
      cd /usr/local/async-profiler/ &&\
      tar -xvzf async-profiler.tar.gz &&\
      rm -f /usr/local/async-profiler/async-profiler.tar.gz

RUN mkdir /usr/local/flame-graph/ &&\
    wget -O /usr/local/flame-graph/flame-graph.zip https://github.com/brendangregg/FlameGraph/archive/1b1c6deede9c33c5134c920bdb7a44cc5528e9a7.zip &&\
    cd /usr/local/flame-graph/ && unzip flame-graph.zip &&\
    cd /usr/local/flame-graph/ &&\
    mv FlameGraph-1b1c6deede9c33c5134c920bdb7a44cc5528e9a7/* ./ &&\
    rm -Rf FlameGraph-1b1c6deede9c33c5134c920bdb7a44cc5528e9a7 &&\
    rm -f /usr/local/flame-graph/flame-graph.zip 
