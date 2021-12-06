#!/usr/bin/python3
from brownie import  accounts, SimpleCollectible, config, network 
import os

def main():
    d = accounts.add(config["wallets"]["from_key"])
    print("NETWORK:",network.show_active())

    source = False
    if os.getenv("ETHERSCAN_TOKEN")
        source = True

    SimpleCollectible.deploy({"from": d}, publish_source=source)