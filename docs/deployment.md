# Deployment

## Requirements

The official minimum requirements to run a FreeTON node, are as follows:

- 1 TB of SSD disk (rotational disk is too slow to keep in sync; the current chain height, is far beloew this, so if you are able to add storage elastically, using LVM or similar, then you can start smaller and add disk as the chain grows).
- 8x CPU cores (or virtual CPUs)
- 16GB RAM
- 1 Gb/s Internet connection

## Full Node Quick Start

The official quick start method of running as node, provided by TONLabs is as follows:

1. Check out the `main.ton.dev` repository, from TONLabs: `git clone https://github.com/tonlabs/main.ton.dev.git`.
1. Change directory to the cloned repo: `cd main.ton.dev`.
1. Change direction to the `scripts` folder: `cd scripts.`
1. Edit the `env.sh` file to change the validator name.
1. Run `./build.sh`, to compile the C++ node.
1. Run `./setup.sh`, to configure the node.
1. Run `./run.sh` to start the node.

You should periodically run `./check_sync.sh` from the `scripts` directory, to check the progress of your sync. The last list of the output should read `INFO: TIME_DIFF...`.

`TIME_DIFF` is the delta between the last block synced by your client, and the head of the chain. When the `TIME_DIFF` is < 10 seconds, you can consider your chain synced up to head.


