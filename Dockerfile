FROM debian:bullseye

ADD . /dlpfs
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-sklearn libfuse2 libre2-dev && \
    cd /dlpfs && \
    pip3 install --upgrade -r requirements.txt && \
    chmod a+x /dlpfs/scripts/run-tests.sh

CMD [ "/dlpfs/scripts/run-tests.sh" ]