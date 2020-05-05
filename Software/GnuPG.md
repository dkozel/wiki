My Lenovo T440p has a built in smartcard reader, helpfully natively supported by Ubuntu 13.10.

```
[dkozel@t440p-linux ~] opensc-tool --list-readers
# Detected readers (pcsc)
Nr.  Card  Features  Name
0    Yes             Alcor Micro AU9540 00 00
```

Useful notes about how I generated and use my OpenPGP Key (4096R/2642D337).  
[[http://www.bootc.net/archives/2013/06/07/generating-a-new-gnupg-key/]]

I bought an OpenPGP Card.  
[[http://shop.kernelconcepts.de/product_info.php?cPath=1_26&products_id=42]]

However it seems that gpg2 cannot interact with the card correctly.
```
[dkozel@t440p-linux codeBlog] gpg2 --card-status
gpg: selecting openpgp failed: Unsupported certificate
gpg: OpenPGP card not available: Unsupported certificate
```

Helpfully the OpenSC project wiki has the solution.  
[[https://www.opensc-project.org/opensc/wiki/OpenPGP#GnomeKeyringgpg-agentconfusion]]
```
cat "unset GPG_AGENT_INFO" >> ~/.bash_local
```

### Notes
* Additional interesting info [[http://www.narf.ssji.net/~shtrom/wiki/tips/openpgpsmartcard]]