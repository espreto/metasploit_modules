## Modules for metasploit. Simple output.

### bind_awk.rb

Bind payload via AWK.

Output:

ToDo
---
### couchdb_enum.rb

Enum databases on CouchDB.

Output:

ToDo
---
### couchdb_login.rb

Brute-force login on CouchDB.

Output:

ToDo
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

ToDo
---
### reverse_awk.rb

Reverse payload via AWK.

Output:

ToDo
---
### hp_enum_perfd.rb

HP Operations Manager Perfd Environment Scanner

Output:

ToDo
---
