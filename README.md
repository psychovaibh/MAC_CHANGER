# MAC_CHANGER
interface mac changer which change to random mac for you just select the interface you want to change

# Note this bash script will only work in linux system.

```
┌──(luffy㉿luffytaro)-[~/Documents]
└─$ sudo ./mac_changer.sh

~~~~~~~~~~~~~~~~~~~~~~~~
This is your interface!!
~~~~~~~~~~~~~~~~~~~~~~~~

lo: 00:00:00:00:00:00
eth0: 52:54:00:ce:79:10


Choose your interface: eth0
52:54:00:2d:5c:70

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
MAC Changed to: 52:54:00:2d:5c:70
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

lo: 00:00:00:00:00:00
eth0: 52:54:00:2d:5c:70
```





# auto_random_mac

```
┌──(luffy㉿luffytaro)-[~/Documents]
└─$ sudo ./auto_random_mac.sh

~~~~~~~~~~~~~~~~~~~~~~~~
This is your interface!!
~~~~~~~~~~~~~~~~~~~~~~~~

lo: 00:00:00:00:00:00
eth0: 52:54:00:c3:a8:52


Choose your interface: eth0

Interval between changing in minutes: 0

Please enter at least 1 minute!!

Interval between changing in minutes: 1


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Use 'ctrl+c' to exit the script!!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
MAC Changed to: 52:54:00:a1:d0:bd
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
MAC Changed to: 52:54:00:51:60:bc
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

^C
```
