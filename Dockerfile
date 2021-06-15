FROM ubuntu:20.04

EXPOSE 8080
EXPOSE 26656
EXPOSE 26657
EXPOSE 1317
EXPOSE 9090

RUN mkdir /node

COPY osmo.sh /usr/bin/
RUN chmod +x /usr/bin/osmo.sh

COPY app.toml /node/
COPY config.toml /node/
COPY genesis.json /node/

COPY osmosisd /usr/bin/
RUN chmod +x /usr/bin/osmosisd

CMD ["osmo.sh"]
