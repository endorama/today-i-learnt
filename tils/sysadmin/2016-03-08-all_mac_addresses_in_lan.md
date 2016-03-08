# All mac addresses in LAN
 
_Category: sysadmin_
_Generated on 2016-03-08_

A quick how to list all MAC address present in a LAN segment


## arp-scan

```
$ sudo arp-scan --interface=eth0 --retry=3 --timeout=200 --localnet --random 
```

From man:

> arp-scan sends ARP packets to hosts on the local network and displays any responses that are received.

Options explained:

- `--interface`: interface where ARP packets are sent
- `--retry`: number of packet sent for each host, 1 is too low to guarantee that the host is effectively offline
- `--timeout`: timeout for considering a packet lost, default is 100ms, but it doesn't produce all results
- `--localnet`: scan all possible hosts on the network attached to the `--interface`
- `--random`: a sequential scan gives suboptimal results. Randomize for the win

See `man arp-scan` for further details.

## arping

Ping destination on device interface by ARP packets, using source address source.

Useful to check for a specific host.

```
$ sudo arping -f -I eth0 -c 3 192.168.1.1
```

- `-f`: finish after first reply
- `-I` (required): interface used to send packets
- `-c`: number of packets ( again 1 is too low )

## nmap

```
$ sudo nmap -sP -PE -PA21,22,23,80,3389 192.168.1.0/24
```

- `-sP`: skip port scan
- `-PE -PP -PM`: different ICMP Ping Types
- `-PA`: TCP ACK Ping on specified ports

To process nmap output:

```
Nmap scan report for ([0-9]+.[0-9]+.[0-9]+.[0-9]+)\nHost is up \(.* latency\).*\nMAC Address: (.*) \((.*)\)
```
`\1` is ip
`\2` is mac
`\3` is vendor