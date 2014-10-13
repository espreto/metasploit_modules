## Modules for metasploit. Simple output.
Some modules that I created for fun.

### bind_awk.rb
Bind payload via AWK.

Output:

---
### couchdb_enum.rb
Enum databases on CouchDB.

Output:

ToDo
---
### couchdb_login.rb
Brute-force login on CouchDB.

Output:

### ToDo
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

### ToDo
---
### reverse_awk.rb
Reverse payload via AWK.

Output:

### ToDo
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

