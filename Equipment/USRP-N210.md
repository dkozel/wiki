## Networking

I use the following script to automatically add the USRP subnet when I connect to the local network. This allows me access to both the wider LAN and to the USRPs simultaneously on a single network interface.

`/etc/network/if-up.d/add-usrp-subnet.sh`

```
#!/bin/bash                    

if [[ `nmcli connection show --active | grep 'Lab LAN'` ]]
then
    ip addr add 192.168.10.5/24 dev enp0s25
fi
```

The network name can be determined with `nmcli connection show --active` when connected to the local network. The device name is shown at the end. For example:

```
[dkozel@T430s ~] nmcli connection show --active
NAME        UUID                                  TYPE            DEVICE  
Lab LAN     5b0c59d0-3c9b-420f-9645-a425862e1088  802-3-ethernet  enp0s25 
```

For earlier versions of Network Manger the command is `nmcli connection status`.