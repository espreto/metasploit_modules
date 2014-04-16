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
[+] Serial: 5b334d206f331e45a16ed7c12c8e5ac32876699a
[+] Path: /run/user/1000/gfvs/afc:host=5b334d206f331e45a16ed7c12c8e5ac32876699a
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
[+] Serial: 5b334d206f331e45a16ed7c12c8e5ac32876699a
[+] Path: /run/user/1000/gfvs/afc:host=5b334d206f331e45a16ed7c12c8e5ac32876699a
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
--------------------
