# Fleet Stress Scripts

This project hosts a few shell scripts to perform stress tests on clusters
running on CoreOS's Fleet.

# Usage

You can use the `run-command.sh` script to call the typical `fleetctl` commands
on slices of a very simple unit located in `stable@.service`.

If you want to e.g. submit 300 units in batches of 100 units per `fleetctl`
command with a sleep between batches of 5 seconds you can use the following:

```
./run-command.sh submit 3 100 5
```
