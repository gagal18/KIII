# KIII \- Homework 2

Bojan Gagaleski 226032

## Chapter 3
### `docker info`

```console
Client: Docker Engine - Community
 Version:    24.0.6
 Context:    default
 Debug Mode: false
 Plugins:
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.11.2-desktop.5
    Path:     /usr/local/lib/docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v2.22.0-desktop.2
    Path:     /usr/local/lib/docker/cli-plugins/docker-compose
  dev: Docker Dev Environments (Docker Inc.)
    Version:  v0.1.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-dev
  extension: Manages Docker extensions (Docker Inc.)
    Version:  v0.2.20
    Path:     /usr/local/lib/docker/cli-plugins/docker-extension
  init: Creates Docker-related starter files for your project (Docker Inc.)
    Version:  v0.1.0-beta.8
    Path:     /usr/local/lib/docker/cli-plugins/docker-init
  sbom: View the packaged-based Software Bill Of Materials (SBOM) for an image (Anchore Inc.)
    Version:  0.6.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-sbom
  scan: Docker Scan (Docker Inc.)
    Version:  v0.26.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-scan
  scout: Docker Scout (Docker Inc.)
    Version:  v1.0.7
    Path:     /usr/local/lib/docker/cli-plugins/docker-scout

Server:
 Containers: 1
  Running: 0
  Paused: 0
  Stopped: 1
 Images: 1
 Server Version: 24.0.6
 Storage Driver: overlay2
  Backing Filesystem: extfs
  Supports d_type: true
  Using metacopy: false
  Native Overlay Diff: true
  userxattr: false
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 1
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: io.containerd.runc.v2 runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 8165feabfdfe38c65b599c4993d227328c231fca
 runc version: v1.1.8-0-g82f18fe
 init version: de40ad0
 Security Options:
  seccomp
   Profile: unconfined
 Kernel Version: 5.15.167.4-microsoft-standard-WSL2
 Operating System: Docker Desktop
 OSType: linux
 Architecture: x86_64
 CPUs: 10
 Total Memory: 7.759GiB
 Name: docker-desktop
 ID: bac823f4-f163-438a-aa43-e45a254ab3bb
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 HTTP Proxy: http.docker.internal:3128
 HTTPS Proxy: http.docker.internal:3128
 No Proxy: hubproxy.docker.internal
 Experimental: true
 Insecure Registries:
  hubproxy.docker.internal:5555
  127.0.0.0/8
 Live Restore Enabled: false

```

### `docker run -i -t ubuntu /bin/bash`

```console
Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
5a7813e071bf: Pulling fs layer
5a7813e071bf: Verifying Checksum
5a7813e071bf: Download complete
5a7813e071bf: Pull complete
Digest: sha256:72297848456d5d37d1262630108ab308d3e9ec7ed1c3286a32fe09856619a782
Status: Downloaded newer image for ubuntu:latest
root@1044afbab358:/#

```

### `Inside the container [Ubuntu]`

```console
root@1044afbab358:/# hostname
1044afbab358
root@1044afbab358:/# cat /etc/hosts                                          │
127.0.0.1       localhost                                                    │
::1     localhost ip6-localhost ip6-loopback                                 │
fe00::0 ip6-localnet                                                         │
ff00::0 ip6-mcastprefix                                                      │
ff02::1 ip6-allnodes                                                         │
ff02::2 ip6-allrouters                                                       │
172.17.0.2      1044afbab358
root@1044afbab358:/# hostname -I                                             │
172.17.0.2                                                                   │
root@1044afbab358:/#
root@1044afbab358:/# ps -aux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.0   4588  3736 pts/0    Ss+  20:49   0:00 /bin/bash
root         153  0.0  0.0   4588  4004 pts/1    Ss   20:52   0:00 bash
root         162  0.0  0.0   7888  4072 pts/1    R+   20:52   0:00 ps -aux
root@1044afbab358:/# apt-get update && apt-get install vim
Hit:1 http://archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://security.ubuntu.com/ubuntu noble-security InRelease
Hit:3 http://archive.ubuntu.com/ubuntu noble-updates InRelease
Hit:4 http://archive.ubuntu.com/ubuntu noble-backports InRelease
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libexpat1 libgpm2 libpython3.12-minimal libpython3.12-stdlib libpython3.12t64 libreadline8t64
  libsodium23 libsqlite3-0 media-types netbase readline-common tzdata vim-common vim-runtime xxd
Suggested packages:
  gpm readline-doc ctags vim-doc vim-scripts
The following NEW packages will be installed:
  libexpat1 libgpm2 libpython3.12-minimal libpython3.12-stdlib libpython3.12t64 libreadline8t64
  libsodium23 libsqlite3-0 media-types netbase readline-common tzdata vim vim-common vim-runtime xxd
0 upgraded, 16 newly installed, 0 to remove and 18 not upgraded.
Need to get 16.3 MB of archives.
After this operation, 72.1 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libexpat1 amd64 2.6.1-2ubuntu0.2 [87.4 kB]
Get:2 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libpython3.12-minimal amd64 3.12.3-1ubuntu0.5 [835 kB]
Get:3 http://archive.ubuntu.com/ubuntu noble/main amd64 media-types all 10.1.0 [27.5 kB]
Get:4 http://archive.ubuntu.com/ubuntu noble/main amd64 netbase all 6.4 [13.1 kB]
Get:5 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 tzdata all 2024b-0ubuntu0.24.04.1 [274 kB]
Get:6 http://archive.ubuntu.com/ubuntu noble/main amd64 readline-common all 8.2-4build1 [56.5 kB]
Get:7 http://archive.ubuntu.com/ubuntu noble/main amd64 libreadline8t64 amd64 8.2-4build1 [153 kB]
Get:8 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libsqlite3-0 amd64 3.45.1-1ubuntu2.1 [701 kB]
Get:9 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libpython3.12-stdlib amd64 3.12.3-1ubuntu0.5 [2069 kB]
Get:10 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 vim-common all 2:9.1.0016-1ubuntu7.6 [385 kB]
Get:11 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 xxd amd64 2:9.1.0016-1ubuntu7.6 [63.3 kB]
Get:12 http://archive.ubuntu.com/ubuntu noble/main amd64 libgpm2 amd64 1.20.7-11 [14.1 kB]
Get:13 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libpython3.12t64 amd64 3.12.3-1ubuntu0.5 [2339 kB]
Get:14 http://archive.ubuntu.com/ubuntu noble/main amd64 libsodium23 amd64 1.0.18-1build3 [161 kB]
Get:15 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 vim-runtime all 2:9.1.0016-1ubuntu7.6 [7281 kB]
Get:16 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 vim amd64 2:9.1.0016-1ubuntu7.6 [1880 kB]
Fetched 16.3 MB in 14s (1171 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package libexpat1:amd64.
(Reading database ... 4383 files and directories currently installed.)
Preparing to unpack .../00-libexpat1_2.6.1-2ubuntu0.2_amd64.deb ...
Unpacking libexpat1:amd64 (2.6.1-2ubuntu0.2) ...
Selecting previously unselected package libpython3.12-minimal:amd64.
Preparing to unpack .../01-libpython3.12-minimal_3.12.3-1ubuntu0.5_amd64.deb ...
Unpacking libpython3.12-minimal:amd64 (3.12.3-1ubuntu0.5) ...
Selecting previously unselected package media-types.
Preparing to unpack .../02-media-types_10.1.0_all.deb ...
Unpacking media-types (10.1.0) ...
Selecting previously unselected package netbase.
Preparing to unpack .../03-netbase_6.4_all.deb ...
Unpacking netbase (6.4) ...
Selecting previously unselected package tzdata.
Preparing to unpack .../04-tzdata_2024b-0ubuntu0.24.04.1_all.deb ...
Unpacking tzdata (2024b-0ubuntu0.24.04.1) ...
Selecting previously unselected package readline-common.
Preparing to unpack .../05-readline-common_8.2-4build1_all.deb ...
Unpacking readline-common (8.2-4build1) ...
Selecting previously unselected package libreadline8t64:amd64.
Preparing to unpack .../06-libreadline8t64_8.2-4build1_amd64.deb ...
Adding 'diversion of /lib/x86_64-linux-gnu/libhistory.so.8 to /lib/x86_64-linux-gnu/libhistory.so.8.usr-is-merged by libreadline8t64'
Adding 'diversion of /lib/x86_64-linux-gnu/libhistory.so.8.2 to /lib/x86_64-linux-gnu/libhistory.so.8.2.usr-is-merged by libreadline8t64'
Adding 'diversion of /lib/x86_64-linux-gnu/libreadline.so.8 to /lib/x86_64-linux-gnu/libreadline.so.8.usr-is-merged by libreadline8t64'
Adding 'diversion of /lib/x86_64-linux-gnu/libreadline.so.8.2 to /lib/x86_64-linux-gnu/libreadline.so.8.2.usr-is-merged by libreadline8t64'
Unpacking libreadline8t64:amd64 (8.2-4build1) ...
Selecting previously unselected package libsqlite3-0:amd64.
Preparing to unpack .../07-libsqlite3-0_3.45.1-1ubuntu2.1_amd64.deb ...
Unpacking libsqlite3-0:amd64 (3.45.1-1ubuntu2.1) ...
Selecting previously unselected package libpython3.12-stdlib:amd64.
Preparing to unpack .../08-libpython3.12-stdlib_3.12.3-1ubuntu0.5_amd64.deb ...
Unpacking libpython3.12-stdlib:amd64 (3.12.3-1ubuntu0.5) ...
Selecting previously unselected package vim-common.
Preparing to unpack .../09-vim-common_2%3a9.1.0016-1ubuntu7.6_all.deb ...
Unpacking vim-common (2:9.1.0016-1ubuntu7.6) ...
Selecting previously unselected package xxd.
Preparing to unpack .../10-xxd_2%3a9.1.0016-1ubuntu7.6_amd64.deb ...
Unpacking xxd (2:9.1.0016-1ubuntu7.6) ...
Selecting previously unselected package libgpm2:amd64.
Preparing to unpack .../11-libgpm2_1.20.7-11_amd64.deb ...
Unpacking libgpm2:amd64 (1.20.7-11) ...
Selecting previously unselected package libpython3.12t64:amd64.
Preparing to unpack .../12-libpython3.12t64_3.12.3-1ubuntu0.5_amd64.deb ...
Unpacking libpython3.12t64:amd64 (3.12.3-1ubuntu0.5) ...
Selecting previously unselected package libsodium23:amd64.
Preparing to unpack .../13-libsodium23_1.0.18-1build3_amd64.deb ...
Unpacking libsodium23:amd64 (1.0.18-1build3) ...
Selecting previously unselected package vim-runtime.
Preparing to unpack .../14-vim-runtime_2%3a9.1.0016-1ubuntu7.6_all.deb ...
Adding 'diversion of /usr/share/vim/vim91/doc/help.txt to /usr/share/vim/vim91/doc/help.txt.vim-tiny by vim-runtime'
Adding 'diversion of /usr/share/vim/vim91/doc/tags to /usr/share/vim/vim91/doc/tags.vim-tiny by vim-runtime'
Unpacking vim-runtime (2:9.1.0016-1ubuntu7.6) ...
Selecting previously unselected package vim.
Preparing to unpack .../15-vim_2%3a9.1.0016-1ubuntu7.6_amd64.deb ...
Unpacking vim (2:9.1.0016-1ubuntu7.6) ...
Setting up libexpat1:amd64 (2.6.1-2ubuntu0.2) ...
Setting up media-types (10.1.0) ...
Setting up libsodium23:amd64 (1.0.18-1build3) ...
Setting up libgpm2:amd64 (1.20.7-11) ...
Setting up libsqlite3-0:amd64 (3.45.1-1ubuntu2.1) ...
Setting up libpython3.12-minimal:amd64 (3.12.3-1ubuntu0.5) ...
Setting up xxd (2:9.1.0016-1ubuntu7.6) ...
Setting up tzdata (2024b-0ubuntu0.24.04.1) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 79.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC entries checked: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.38.2 /usr/local/share/perl/5.38.2 /usr/lib/x86_64-linux-gnu/perl5/5.38 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.38 /usr/share/perl/5.38 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 8.)
debconf: falling back to frontend: Teletype
Configuring tzdata
------------------

Please select the geographic area in which you live. Subsequent configuration questions will narrow
this down by presenting a list of cities, representing the time zones in which they are located.

  1. Africa   3. Antarctica  5. Asia      7. Australia  9. Indian    11. Etc
  2. America  4. Arctic      6. Atlantic  8. Europe     10. Pacific  12. Legacy
Geographic area: 8

Please select the city or region corresponding to your time zone.

  1. Amsterdam   12. Busingen     23. Kirov       34. Moscow      45. Saratov     56. Vienna
  2. Andorra     13. Chisinau     24. Kyiv        35. Nicosia     46. Simferopol  57. Vilnius
  3. Astrakhan   14. Copenhagen   25. Lisbon      36. Oslo        47. Skopje      58. Volgograd
  4. Athens      15. Dublin       26. Ljubljana   37. Paris       48. Sofia       59. Warsaw
  5. Belfast     16. Gibraltar    27. London      38. Podgorica   49. Stockholm   60. Zagreb
  6. Belgrade    17. Guernsey     28. Luxembourg  39. Prague      50. Tallinn     61. Zurich
  7. Berlin      18. Helsinki     29. Madrid      40. Riga        51. Tirane
  8. Bratislava  19. Isle_of_Man  30. Malta       41. Rome        52. Tiraspol
  9. Brussels    20. Istanbul     31. Mariehamn   42. Samara      53. Ulyanovsk
  10. Bucharest  21. Jersey       32. Minsk       43. San_Marino  54. Vaduz
  11. Budapest   22. Kaliningrad  33. Monaco      44. Sarajevo    55. Vatican
Time zone: 47


Current default time zone: 'Europe/Skopje'
Local time is now:      Mon Mar 10 21:56:43 CET 2025.
Universal Time is now:  Mon Mar 10 20:56:43 UTC 2025.
Run 'dpkg-reconfigure tzdata' if you wish to change it.

Setting up vim-common (2:9.1.0016-1ubuntu7.6) ...
Setting up netbase (6.4) ...
Setting up vim-runtime (2:9.1.0016-1ubuntu7.6) ...
Setting up readline-common (8.2-4build1) ...
Setting up libreadline8t64:amd64 (8.2-4build1) ...
Setting up libpython3.12-stdlib:amd64 (3.12.3-1ubuntu0.5) ...
Setting up libpython3.12t64:amd64 (3.12.3-1ubuntu0.5) ...
Setting up vim (2:9.1.0016-1ubuntu7.6) ...
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/tr/man1/editor.1.gz because associated file /usr/share/man/tr/man1/vim.1.gz (of link group editor) doesn't exist
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/tr/man1/ex.1.gz because associated file /usr/share/man/tr/man1/vim.1.gz (of link group ex) doesn't exist
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/vi.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group vi) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/da/man1/vi.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group vi) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/de/man1/vi.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group vi) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/fr/man1/vi.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group vi) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/it/man1/vi.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group vi) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/ja/man1/vi.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group vi) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/pl/man1/vi.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group vi) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/ru/man1/vi.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group vi) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/tr/man1/vi.1.gz because associated file /usr/share/man/tr/man1/vim.1.gz (of link group vi) doesn't exist
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/view (view) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/view.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group view) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/da/man1/view.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group view) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/de/man1/view.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group view) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/fr/man1/view.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group view) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/it/man1/view.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group view) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/ja/man1/view.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group view) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/pl/man1/view.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group view) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/ru/man1/view.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group view) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/tr/man1/view.1.gz because associated file /usr/share/man/tr/man1/vim.1.gz (of link group view) doesn't exist
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode
Processing triggers for libc-bin (2.39-0ubuntu8.3) ...
root@1044afbab358:/# vim
root@1044afbab358:/# exit
```
### `docker ps -a`
```console
CONTAINER ID   IMAGE                              COMMAND                  CREATED        STATUS                    PORTS     NAMES
1044afbab358   ubuntu                             "/bin/bash"              33 hours ago   Up 8 minutes                        determined_rhodes
01ee781b6732   quay.io/keycloak/keycloak:latest   "/opt/keycloak/bin/k…"   4 days ago     Exited (143) 4 days ago             keycloak_dev
```
### `docker run --name bob_the_container -i -t ubuntu /bin/bash`
```console
 gagal18@BojanBanzae  /home/fax/kiii   master ±  docker run --name bob_the_container -i -t ubuntu /bin/bash
root@2a42aa7c6af4:/# exit
exit
 gagal18@BojanBanzae  /home/fax/kiii   master ± 

```

### `docker ps -a`
```console
CONTAINER ID   IMAGE                              COMMAND                  CREATED              STATUS                    PORTS     NAMES
2a42aa7c6af4   ubuntu                             "/bin/bash"              About a minute ago   Up 22 seconds                       bob_the_container
1044afbab358   ubuntu                             "/bin/bash"              34 hours ago         Up 12 minutes                       determined_rhodes
01ee781b6732   quay.io/keycloak/keycloak:latest   "/opt/keycloak/bin/k…"   4 days ago           Exited (143) 4 days ago             keycloak_dev
```

### `docker start bob_the_container`
```console
bob_the_container
```

### `docker run --name daemon_dave -d ubuntu /bin/sh -c "while true; do echo hello world; sleep 1; done"`
```console
bf2d18e707b07bed2b4051fb5c12291ffdeebba4370ea73bf39bdb5e70471db7
```


### `docker ps`
```console
CONTAINER ID   IMAGE     COMMAND                   CREATED          STATUS          PORTS     NAMES
1c3dd4e3c1f4   ubuntu    "/bin/sh -c 'while\n …"   11 seconds ago   Up 10 seconds             daemon_dave
2a42aa7c6af4   ubuntu    "/bin/bash"               5 minutes ago    Up 4 minutes              bob_the_container
1044afbab358   ubuntu    "/bin/bash"               34 hours ago     Up 16 minutes             determined_rhodes
```

### `docker logs daemon_dave`
```console
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
hello world
```

### `docker logs -ft daemon_dave`
```console
2025-03-10T21:05:56.382088763Z hello world
2025-03-10T21:05:57.383088798Z hello world
2025-03-10T21:05:58.384534018Z hello world
2025-03-10T21:05:59.385533123Z hello world
2025-03-10T21:06:00.386420391Z hello world
2025-03-10T21:06:01.388215571Z hello world
2025-03-10T21:06:02.389601192Z hello world
2025-03-10T21:06:03.390856408Z hello world
2025-03-10T21:06:04.392156982Z hello world
2025-03-10T21:06:05.393613092Z hello world
2025-03-10T21:06:06.395470866Z hello world
2025-03-10T21:06:07.396378001Z hello world
2025-03-10T21:06:08.398200893Z hello world
2025-03-10T21:06:09.399689580Z hello world
2025-03-10T21:06:10.401295372Z hello world
2025-03-10T21:06:11.402697703Z hello world
2025-03-10T21:06:12.404833437Z hello world
2025-03-10T21:06:13.407249936Z hello world
2025-03-10T21:06:14.409010723Z hello world
2025-03-10T21:06:15.410546587Z hello world
2025-03-10T21:06:16.411907037Z hello world
2025-03-10T21:06:17.413542372Z hello world
2025-03-10T21:06:18.414916891Z hello world
2025-03-10T21:06:19.416303444Z hello world
2025-03-10T21:06:20.418465644Z hello world
2025-03-10T21:06:21.420340403Z hello world
2025-03-10T21:06:22.422088404Z hello world
2025-03-10T21:06:23.423556788Z hello world
2025-03-10T21:06:24.425832814Z hello world
2025-03-10T21:06:25.427543814Z hello world
2025-03-10T21:06:26.428687662Z hello world
2025-03-10T21:06:27.429829349Z hello world
2025-03-10T21:06:28.431333520Z hello world
2025-03-10T21:06:29.432694460Z hello world
2025-03-10T21:06:30.433565375Z hello world
2025-03-10T21:06:31.435054544Z hello world
2025-03-10T21:06:32.436561420Z hello world
2025-03-10T21:06:33.438192344Z hello world
2025-03-10T21:06:34.440358023Z hello world
2025-03-10T21:06:35.442453960Z hello world
2025-03-10T21:06:36.444278466Z hello world
2025-03-10T21:06:37.445701107Z hello world
2025-03-10T21:06:38.447698483Z hello world
2025-03-10T21:06:39.449387934Z hello world
2025-03-10T21:06:40.450360115Z hello world
2025-03-10T21:06:41.452079552Z hello world
2025-03-10T21:06:42.453425607Z hello world
2025-03-10T21:06:43.454273102Z hello world
2025-03-10T21:06:44.456050391Z hello world
2025-03-10T21:06:45.457741499Z hello world
2025-03-10T21:06:46.459706544Z hello world
2025-03-10T21:06:47.461009478Z hello world
2025-03-10T21:06:48.462337916Z hello world
2025-03-10T21:06:49.463715633Z hello world
2025-03-10T21:06:50.465364654Z hello world
2025-03-10T21:06:51.467043652Z hello world
2025-03-10T21:06:52.469368608Z hello world
2025-03-10T21:06:53.471598170Z hello world
2025-03-10T21:06:54.473279714Z hello world
2025-03-10T21:06:55.475101719Z hello world
2025-03-10T21:06:56.476736776Z hello world
2025-03-10T21:06:57.478183025Z hello world
2025-03-10T21:06:58.479873155Z hello world
2025-03-10T21:06:59.480848521Z hello world
2025-03-10T21:07:00.482206483Z hello world
2025-03-10T21:07:01.484157695Z hello world
2025-03-10T21:07:02.485824537Z hello world
2025-03-10T21:07:03.487110942Z hello world
2025-03-10T21:07:04.489311090Z hello world
2025-03-10T21:07:05.490915204Z hello world
2025-03-10T21:07:06.492731480Z hello world
2025-03-10T21:07:07.494473278Z hello world
2025-03-10T21:07:08.495865350Z hello world
2025-03-10T21:07:09.497500443Z hello world
2025-03-10T21:07:10.499041262Z hello world
2025-03-10T21:07:11.500950918Z hello world
2025-03-10T21:07:12.502748347Z hello world
2025-03-10T21:07:13.503919055Z hello world
2025-03-10T21:07:14.505962857Z hello world
2025-03-10T21:07:15.507760306Z hello world
2025-03-10T21:07:16.509470318Z hello world
2025-03-10T21:07:17.511141487Z hello world
```

### `docker top daemon_dave`
```console
UID                 PID                 PPID                C                   STIME               TTY                 TIME                CMD
root                5456                5437                0                   21:05               ?                   00:00:00            /bin/sh -c while true; do echo hello world; sleep 1; done
root                5891                5456                0                   21:07               ?                   00:00:00            sleep 1
```

### `docker stats daemon_dave`
```console
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.01%     576KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.01%     576KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.15%     580KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.15%     580KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.08%     576KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.08%     576KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.13%     576KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.13%     576KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.13%     584KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.13%     584KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.11%     580KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.11%     580KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.08%     692KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
[2J[HCONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT   MEM %     NET I/O     BLOCK I/O   PIDS
1c3dd4e3c1f4   daemon_dave   0.08%     692KiB / 7.759GiB   0.01%     866B / 0B   0B / 0B     2
```

### `docker stop daemon_dave`
```console
daemon_dave
```

### `docker inspect daemon_alice`
```console
[
    {
        "Id": "275b35602c9b3dcb4fa15a9a8f453b445c20a9917c476d94e1a453d3d4a514fb",
        "Created": "2025-03-10T21:11:58.949078348Z",
        "Path": "/bin/bash",
        "Args": [],
        "State": {
            "Status": "restarting",
            "Running": true,
            "Paused": false,
            "Restarting": true,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 0,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2025-03-10T21:12:13.897803012Z",
            "FinishedAt": "2025-03-10T21:12:14.235685797Z"
        },
        "Image": "sha256:a04dc4851cbcbb42b54d1f52a41f5f9eca6a5fd03748c3f6eb2cbeb238ca99bd",
        "ResolvConfPath": "/var/lib/docker/containers/275b35602c9b3dcb4fa15a9a8f453b445c20a9917c476d94e1a453d3d4a514fb/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/275b35602c9b3dcb4fa15a9a8f453b445c20a9917c476d94e1a453d3d4a514fb/hostname",
        "HostsPath": "/var/lib/docker/containers/275b35602c9b3dcb4fa15a9a8f453b445c20a9917c476d94e1a453d3d4a514fb/hosts",
        "LogPath": "/var/lib/docker/containers/275b35602c9b3dcb4fa15a9a8f453b445c20a9917c476d94e1a453d3d4a514fb/275b35602c9b3dcb4fa15a9a8f453b445c20a9917c476d94e1a453d3d4a514fb-json.log",
        "Name": "/daemon_alice",
        "RestartCount": 8,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": null,
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {}
            },
            "NetworkMode": "default",
            "PortBindings": {},
            "RestartPolicy": {
                "Name": "always",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "ConsoleSize": [
                51,
                94
            ],
            "CapAdd": null,
            "CapDrop": null,
            "CgroupnsMode": "host",
            "Dns": [],
            "DnsOptions": [],
            "DnsSearch": [],
            "ExtraHosts": null,
            "GroupAdd": null,
            "IpcMode": "private",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": [],
            "BlkioDeviceReadBps": [],
            "BlkioDeviceWriteBps": [],
            "BlkioDeviceReadIOps": [],
            "BlkioDeviceWriteIOps": [],
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": [],
            "DeviceCgroupRules": null,
            "DeviceRequests": null,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": false,
            "PidsLimit": null,
            "Ulimits": null,
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/asound",
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware"
            ],
            "ReadonlyPaths": [
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/bbcce347af9c63b06f647183cb57a1557f013090f658f3d8ca10b9a24f19f5f4-init/diff:/var/lib/docker/overlay2/5625146fe956ef7f278618459c49a2ac14194ba8fb026d8c88445eda689d9f36/diff",
                "MergedDir": "/var/lib/docker/overlay2/bbcce347af9c63b06f647183cb57a1557f013090f658f3d8ca10b9a24f19f5f4/merged",
                "UpperDir": "/var/lib/docker/overlay2/bbcce347af9c63b06f647183cb57a1557f013090f658f3d8ca10b9a24f19f5f4/diff",
                "WorkDir": "/var/lib/docker/overlay2/bbcce347af9c63b06f647183cb57a1557f013090f658f3d8ca10b9a24f19f5f4/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [],
        "Config": {
            "Hostname": "275b35602c9b",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
            ],
            "Cmd": [
                "/bin/bash"
            ],
            "Image": "ubuntu",
            "Volumes": null,
            "WorkingDir": "",
            "Entrypoint": null,
            "OnBuild": null,
            "Labels": {
                "desktop.docker.io/wsl-distro": "Ubuntu",
                "org.opencontainers.image.ref.name": "ubuntu",
                "org.opencontainers.image.version": "24.04"
            }
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "e57d66ac6e0d36e55063f4357f43569f0387227c7e9943ccd097826efe1a29f6",
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "Ports": {},
            "SandboxKey": "/var/run/docker/netns/e57d66ac6e0d",
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "",
            "Gateway": "",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "",
            "IPPrefixLen": 0,
            "IPv6Gateway": "",
            "MacAddress": "",
            "Networks": {
                "bridge": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": null,
                    "NetworkID": "515839c37cdf836a8bbc04b9d62ebd1a84108348438f0a6b67a4920297411c85",
                    "EndpointID": "",
                    "Gateway": "",
                    "IPAddress": "",
                    "IPPrefixLen": 0,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "",
                    "DriverOpts": null
                }
            }
        }
    }
]
```


### `docker stop daemon_alice`
```console
daemon_alice
```

### `docker rm daemon_alice`
```console
daemon_alice
```

## Chapter 4
### `docker images`
```console
REPOSITORY                  TAG       IMAGE ID       CREATED       SIZE
quay.io/keycloak/keycloak   latest    152827b20b9e   10 days ago   443MB
ubuntu                      latest    a04dc4851cbc   6 weeks ago   78.1MB
```

### `docker pull ubuntu:18.04`
```console
18.04: Pulling from library/ubuntu
7c457f213c76: Pulling fs layer
7c457f213c76: Verifying Checksum
7c457f213c76: Download complete
7c457f213c76: Pull complete
Digest: sha256:152dc042452c496007f07ca9127571cb9c29697f42acbfad72324b2bb2e43c98
Status: Downloaded newer image for ubuntu:18.04
docker.io/library/ubuntu:18.04

What's Next?
  View a summary of image vulnerabilities and recommendations → docker scout quickview ubuntu:18.04
```

### `docker images`
```console
REPOSITORY                  TAG       IMAGE ID       CREATED         SIZE
quay.io/keycloak/keycloak   latest    152827b20b9e   10 days ago     443MB
ubuntu                      latest    a04dc4851cbc   6 weeks ago     78.1MB
ubuntu                      18.04     f9a80a55f492   21 months ago   63.2MB
```
