#!/bin/sh

osmosisd config chain-id osmo-testnet-3

osmosisd init --chain-id=osmo-testnet-3 "Osmosis | SkyNet"

rm /root/.osmosisd/config/genesis.json
cp /node/genesis.json /root/.osmosisd/config/genesis.json
chmod -x /root/.osmosisd/config/genesis.json

rm /root/.osmosisd/config/app.toml
cp /node/app.toml /root/.osmosisd/config/app.toml
chmod -x /root/.osmosisd/config/app.toml

rm /root/.osmosisd/config/config.toml
cp /node/config.toml /root/.osmosisd/config/config.toml
chmod -x /root/.osmosisd/config/config.toml

osmosisd start
