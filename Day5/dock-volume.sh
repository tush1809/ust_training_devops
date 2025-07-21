tush@Tushar:~$ nano docker.sh
tush@Tushar:~$ cd ~/ust_training_devops
tush@Tushar:~/ust_training_devops$ mkdir Day5
tush@Tushar:~/ust_training_devops$ git add/docker images-push.sh
git: 'add/docker' is not a git command. See 'git --help'.
tush@Tushar:~/ust_training_devops$ git add docker images-push.sh
fatal: pathspec 'docker' did not match any files
tush@Tushar:~/ust_training_devops$ cd ..
tush@Tushar:~$ ls -it
46411 ust_training_devops   2601 docker-imagepush.sh  43855 Day3
tush@Tushar:~$ cd ~/ust_training_devops
tush@Tushar:~/ust_training_devops$ cd Day5
tush@Tushar:~/ust_training_devops/Day5$ cd ..
tush@Tushar:~/ust_training_devops$ git add Day/5/docker-imagepush.sh
fatal: pathspec 'Day/5/docker-imagepush.sh' did not match any files
tush@Tushar:~/ust_training_devops$ Day5/docker-imagepush.sh
-bash: Day5/docker-imagepush.sh: No such file or directory
tush@Tushar:~/ust_training_devops$ git add Day5/docker-imagepush.sh
git commit -m "Adding Day5 progress"
git push
fatal: pathspec 'Day5/docker-imagepush.sh' did not match any files
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        Tushar (1).pem
        Tushar.pem

nothing added to commit but untracked files present (use "git add" to track)
Everything up-to-date
tush@Tushar:~/ust_training_devops$ ls ~ | grep docker
docker-imagepush.sh
tush@Tushar:~/ust_training_devops$ mv ~/docker-imagepush.sh Day5/
tush@Tushar:~/ust_training_devops$ git add Day5/docker-imagepush.sh
tush@Tushar:~/ust_training_devops$ git commit -m "adding Day-5 progress"
[main 2de507a] adding Day-5 progress
 1 file changed, 20 insertions(+)
 create mode 100644 Day5/docker-imagepush.sh
tush@Tushar:~/ust_training_devops$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 12 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 941 bytes | 941.00 KiB/s, done.
Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:tush1809/ust_training_devops.git
   16deb00..2de507a  main -> main
tush@Tushar:~/ust_training_devops$ cd ..
tush@Tushar:~$ cd /mnt/d/Pydemopr
tush@Tushar:/mnt/d/Pydemopr$ python myapp.py
Command 'python' not found, did you mean:
  command 'python3' from deb python3
  command 'python' from deb python-is-python3
tush@Tushar:/mnt/d/Pydemopr$ sudo apt update

[sudo] password for tush:
Hit:1 https://download.docker.com/linux/ubuntu noble InRelease
Get:2 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
Hit:3 http://archive.ubuntu.com/ubuntu noble InRelease
Get:4 http://archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
Get:5 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [21.5 kB]
Get:6 http://archive.ubuntu.com/ubuntu noble-backports InRelease [126 kB]
Get:7 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [52.2 kB]
Get:8 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Components [212 B]
Get:9 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Components [208 B]
Get:10 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages [1269 kB]
Get:11 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 Components [163 kB]
Get:12 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 Packages [1111 kB]
Get:13 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 Components [376 kB]
Get:14 http://archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Components [212 B]
Get:15 http://archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Components [940 B]
Get:16 http://archive.ubuntu.com/ubuntu noble-backports/main amd64 Components [7092 B]
Get:17 http://archive.ubuntu.com/ubuntu noble-backports/universe amd64 Components [28.4 kB]
Get:18 http://archive.ubuntu.com/ubuntu noble-backports/restricted amd64 Components [216 B]
Get:19 http://archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Components [212 B]
Fetched 3409 kB in 6s (598 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
tush@Tushar:/mnt/d/Pydemopr$ sudo apt install python-is-python3
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  python-is-python3
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 2684 B of archives.
After this operation, 15.4 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu noble/main amd64 python-is-python3 all 3.11.4-1 [2684 B]
Fetched 2684 B in 1s (3330 B/s)
Selecting previously unselected package python-is-python3.
(Reading database ... 41380 files and directories currently installed.)
Preparing to unpack .../python-is-python3_3.11.4-1_all.deb ...
Unpacking python-is-python3 (3.11.4-1) ...
Setting up python-is-python3 (3.11.4-1) ...
Processing triggers for man-db (2.12.0-4build2) ...
tush@Tushar:/mnt/d/Pydemopr$ python myapp.py
Enter the name you want to store in file  or enter to proceed:Rohit
Do you want to see all user names? y/n: y
Tushar
Priyansh
aditya
Rohit
tush@Tushar:/mnt/d/Pydemopr$ docker build.
docker: unknown command: docker build.

Run 'docker --help' for more information
tush@Tushar:/mnt/d/Pydemopr$ docker build .
[+] Building 4.3s (2/2) FINISHED                                                                                                             docker:default
 => [internal] load build definition from Dockerfile                                                                                                   0.1s
 => => transferring dockerfile: 115B                                                                                                                   0.0s
 => ERROR [internal] load metadata for docker.io/library/python:latest                                                                                 4.0s
------
 > [internal] load metadata for docker.io/library/python:latest:
------
Dockerfile:1
--------------------
   1 | >>> FROM python
   2 |
   3 |     WORKDIR /myapp
--------------------
ERROR: failed to build: failed to solve: python: failed to resolve source metadata for docker.io/library/python:latest: failed to copy: httpReadSeeker: failed open: failed to do request: Get "https://docker-images-prod.6aa30f8b08e16409b46e0173d6de2f56.r2.cloudflarestorage.com/registry-v2/docker/registry/v2/blobs/sha256/1c/1c1dd43eba265a3a394d7e086c38e8d5178da79845a2b359c28e874b84203cd5/data?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=f1baa2dd9b876aeb89efebbfc9e5d5f4%2F20250721%2Fauto%2Fs3%2Faws4_request&X-Amz-Date=20250721T082352Z&X-Amz-Expires=1200&X-Amz-SignedHeaders=host&X-Amz-Signature=c179e21bf7f02b9f9eadc40d4a6090cb5cb7b93b103d0b861bb1a377ce6f22b4": dial tcp: lookup docker-images-prod.6aa30f8b08e16409b46e0173d6de2f56.r2.cloudflarestorage.com on 10.255.255.254:53: server misbehaving
tush@Tushar:/mnt/d/Pydemopr$ docker run busybox ping -c 4 google.com
Unable to find image 'busybox:latest' locally
latest: Pulling from library/busybox
90b9666d4aed: Pull complete
Digest: sha256:f85340bf132ae937d2c2a763b8335c9bab35d6e8293f70f606b9c6178d84f42b
Status: Downloaded newer image for busybox:latest
PING google.com (142.251.43.174): 56 data bytes
64 bytes from 142.251.43.174: seq=0 ttl=111 time=54.158 ms
64 bytes from 142.251.43.174: seq=1 ttl=111 time=163.803 ms
64 bytes from 142.251.43.174: seq=2 ttl=111 time=55.971 ms
64 bytes from 142.251.43.174: seq=3 ttl=111 time=157.742 ms

--- google.com ping statistics ---
4 packets transmitted, 4 packets received, 0% packet loss
round-trip min/avg/max = 54.158/107.918/163.803 ms
tush@Tushar:/mnt/d/Pydemopr$ docker build -t my-python-app .
[+] Building 161.2s (5/7)                                                                                                                    docker:default
 => [internal] load build definition from Dockerfile                                                                                                   0.0s
 => => transferring dockerfile: 115B                                                                                                                   0.0s
 => [internal] load metadata for docker.io/library/python:latest                                                                                       2.4s
 => [internal] load .dockerignore                                                                                                                      0.0s
 => => transferring context: 2B                                                                                                                        0.0s
 => ERROR [1/3] FROM docker.io/library/python:latest@sha256:28f60ab75da2183870846130cead1f6af30162148d3238348f78f89cf6160b5d                         158.6s
 => => resolve docker.io/library/python:latest@sha256:28f60ab75da2183870846130cead1f6af30162148d3238348f78f89cf6160b5d                                 0.0s
 => => sha256:28f60ab75da2183870846130cead1f6af30162148d3238348f78f89cf6160b5d 9.72kB / 9.72kB                                                         0.0s
 => => sha256:238379aacf40f83bfec1aa261924a463a91564b85fbbb97c9a96d44dc23bebe7 2.32kB / 2.32kB                                                         0.0s
 => => sha256:1c1dd43eba265a3a394d7e086c38e8d5178da79845a2b359c28e874b84203cd5 6.32kB / 6.32kB                                                         0.0s
 => => sha256:c1995213564325caf7e52ecd95fe4435c70b03eb94c674ac15706733986b86e0 48.49MB / 48.49MB                                                      95.8s
 => => sha256:7bbf972c6c2f5b7313ae3cb74e63888ab70931bcd9aefd960f9a38c540dbf2ca 24.02MB / 24.02MB                                                      86.5s
 => => sha256:900e2c02f17f686733f4f957ddfb07b3342d1957d87b56254634d4fbb2abb81d 64.40MB / 64.40MB                                                      97.1s
 => => sha256:abe9c1abe6f3b8ca9fc6abe710405f830f95262f1d356e8f6545d823b5840a5c 106.95MB / 211.37MB                                                   158.7s
 => => sha256:562e9f67c041256c29786a8c683feb6476a163a988ae50af68dcddfab35d0a6b 6.16MB / 6.16MB                                                       113.7s
 => => extracting sha256:c1995213564325caf7e52ecd95fe4435c70b03eb94c674ac15706733986b86e0                                                              2.2s
 => => sha256:8ae8ebad5c0ed05c7e74eeb6711800b83bc7f814fd0a154ac0c26c2c6e6bc953 27.39MB / 27.39MB                                                     100.7s
 => => extracting sha256:7bbf972c6c2f5b7313ae3cb74e63888ab70931bcd9aefd960f9a38c540dbf2ca                                                              0.7s
 => => extracting sha256:900e2c02f17f686733f4f957ddfb07b3342d1957d87b56254634d4fbb2abb81d                                                              2.7s
 => => sha256:5b1a73f6734a3e76a61e14dcb79ccf173d0f0ac924a3d90b467e6c683e45da62 0B / 250B                                                             158.7s
 => [internal] load build context                                                                                                                      0.0s
 => => transferring context: 537B                                                                                                                      0.0s
------
 > [1/3] FROM docker.io/library/python:latest@sha256:28f60ab75da2183870846130cead1f6af30162148d3238348f78f89cf6160b5d:
------
Dockerfile:1
--------------------
   1 | >>> FROM python
   2 |
   3 |     WORKDIR /myapp
--------------------
ERROR: failed to build: failed to solve: failed to copy: httpReadSeeker: failed open: failed to do request: Get "https://docker-images-prod.6aa30f8b08e16409b46e0173d6de2f56.r2.cloudflarestorage.com/registry-v2/docker/registry/v2/blobs/sha256/5b/5b1a73f6734a3e76a61e14dcb79ccf173d0f0ac924a3d90b467e6c683e45da62/data?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=f1baa2dd9b876aeb89efebbfc9e5d5f4%2F20250721%2Fauto%2Fs3%2Faws4_request&X-Amz-Date=20250721T082857Z&X-Amz-Expires=1200&X-Amz-SignedHeaders=host&X-Amz-Signature=18310bb84313e211ddd462fc5f71b127d4dd7daa87d60911c2eef4c7c92da25c": dial tcp: lookup docker-images-prod.6aa30f8b08e16409b46e0173d6de2f56.r2.cloudflarestorage.com on 10.255.255.254:53: server misbehaving
tush@Tushar:/mnt/d/Pydemopr$ docker build -t my-python-app .
[+] Building 2.3s (2/2) FINISHED                                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                                                        0.0s
 => => transferring dockerfile: 126B                                                                                                        0.0s
 => ERROR [internal] load metadata for docker.io/library/python:3.11-slim                                                                   2.2s
------
 > [internal] load metadata for docker.io/library/python:3.11-slim:
------
Dockerfile:1
--------------------
   1 | >>> FROM python:3.11-slim
   2 |
   3 |     WORKDIR /myapp
--------------------
ERROR: failed to build: failed to solve: python:3.11-slim: failed to resolve source metadata for docker.io/library/python:3.11-slim: failed to copy: httpReadSeeker: failed open: failed to do request: Get "https://docker-images-prod.6aa30f8b08e16409b46e0173d6de2f56.r2.cloudflarestorage.com/registry-v2/docker/registry/v2/blobs/sha256/0b/0b14a859cdba15104c5f194ef813fcccbf2749d74bc7be4550c06a0fc0d482e6/data?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=f1baa2dd9b876aeb89efebbfc9e5d5f4%2F20250721%2Fauto%2Fs3%2Faws4_request&X-Amz-Date=20250721T083144Z&X-Amz-Expires=1200&X-Amz-SignedHeaders=host&X-Amz-Signature=7a246bd65f31831615e12670c6397e1fb5e9482556896882aef451c2762a1c3a": dial tcp: lookup docker-images-prod.6aa30f8b08e16409b46e0173d6de2f56.r2.cloudflarestorage.com on 10.255.255.254:53: server misbehaving
tush@Tushar:/mnt/d/Pydemopr$ sudo docker restart
[sudo] password for tush:
Sorry, try again.
[sudo] password for tush:
docker: 'docker restart' requires at least 1 argument

Usage:  docker restart [OPTIONS] CONTAINER [CONTAINER...]

See 'docker restart --help' for more information
tush@Tushar:/mnt/d/Pydemopr$ sudo service docker restart
tush@Tushar:/mnt/d/Pydemopr$ docker build -t my-python-app .
[+] Building 4.4s (2/2) FINISHED                                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                                                        0.0s
 => => transferring dockerfile: 126B                                                                                                        0.0s
 => ERROR [internal] load metadata for docker.io/library/python:3.11-slim                                                                   4.4s
------
 > [internal] load metadata for docker.io/library/python:3.11-slim:
------
Dockerfile:1
--------------------
   1 | >>> FROM python:3.11-slim
   2 |
   3 |     WORKDIR /myapp
--------------------
ERROR: failed to build: failed to solve: python:3.11-slim: failed to resolve source metadata for docker.io/library/python:3.11-slim: failed to copy: httpReadSeeker: failed open: failed to do request: Get "https://docker-images-prod.6aa30f8b08e16409b46e0173d6de2f56.r2.cloudflarestorage.com/registry-v2/docker/registry/v2/blobs/sha256/0b/0b14a859cdba15104c5f194ef813fcccbf2749d74bc7be4550c06a0fc0d482e6/data?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=f1baa2dd9b876aeb89efebbfc9e5d5f4%2F20250721%2Fauto%2Fs3%2Faws4_request&X-Amz-Date=20250721T083536Z&X-Amz-Expires=1200&X-Amz-SignedHeaders=host&X-Amz-Signature=b0bc33fda8eda2e87f80be2609b28195e5a5e9ff641d73873c17cc7c3ef42624": dial tcp: lookup docker-images-prod.6aa30f8b08e16409b46e0173d6de2f56.r2.cloudflarestorage.com on 10.255.255.254:53: server misbehaving
tush@Tushar:/mnt/d/Pydemopr$ ping google.com
PING google.com (142.250.206.110) 56(84) bytes of data.
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=1 ttl=112 time=46.5 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=2 ttl=112 time=66.1 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=3 ttl=112 time=65.2 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=4 ttl=112 time=142 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=5 ttl=112 time=189 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=6 ttl=112 time=140 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=7 ttl=112 time=185 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=8 ttl=112 time=55.0 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=9 ttl=112 time=66.5 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=10 ttl=112 time=44.0 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=11 ttl=112 time=55.1 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=12 ttl=112 time=56.9 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=13 ttl=112 time=54.0 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=14 ttl=112 time=53.8 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=15 ttl=112 time=83.2 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=16 ttl=112 time=200 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=17 ttl=112 time=179 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=18 ttl=112 time=182 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=19 ttl=112 time=139 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=20 ttl=112 time=195 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=21 ttl=112 time=178 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=22 ttl=112 time=152 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=23 ttl=112 time=134 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=24 ttl=112 time=216 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=25 ttl=112 time=90.7 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=26 ttl=112 time=81.4 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=27 ttl=112 time=196 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=28 ttl=112 time=182 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=29 ttl=112 time=73.9 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=30 ttl=112 time=58.1 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=31 ttl=112 time=160 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=32 ttl=112 time=175 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=33 ttl=112 time=52.3 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=34 ttl=112 time=185 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=35 ttl=112 time=227 ms
^C
--- google.com ping statistics ---
35 packets transmitted, 35 received, 0% packet loss, time 34057ms
rtt min/avg/max/mdev = 44.031/124.597/226.976/60.509 ms
tush@Tushar:/mnt/d/Pydemopr$ cd ..
tush@Tushar:/mnt/d$ cd ..
tush@Tushar:/mnt$ cd ..
tush@Tushar:/$ pwd
/
tush@Tushar:/$ cd ..
tush@Tushar:/$ sudo nano /etc/docker/daemon.json
tush@Tushar:/$ sudo service docker restart
tush@Tushar:/$ cd /mnt/d/Pydemopr
tush@Tushar:/mnt/d/Pydemopr$ docker build -t my-python-app .
[+] Building 205.9s (8/8) FINISHED                                                                                                docker:default
 => [internal] load build definition from Dockerfile                                                                                        0.0s
 => => transferring dockerfile: 126B                                                                                                        0.0s
 => [internal] load metadata for docker.io/library/python:3.11-slim                                                                         5.6s
 => [internal] load .dockerignore                                                                                                           0.0s
 => => transferring context: 2B                                                                                                             0.0s
 => [1/3] FROM docker.io/library/python:3.11-slim@sha256:139020233cc412efe4c8135b0efe1c7569dc8b28ddd88bddb109b764f8977e30                 200.0s
 => => resolve docker.io/library/python:3.11-slim@sha256:139020233cc412efe4c8135b0efe1c7569dc8b28ddd88bddb109b764f8977e30                   0.0s
 => => sha256:153bae509ec02c9ac789e2e35f3cbe94be446b59c3afcfbbc88c96a344d2eb73 1.75kB / 1.75kB                                              0.0s
 => => sha256:0b14a859cdba15104c5f194ef813fcccbf2749d74bc7be4550c06a0fc0d482e6 5.37kB / 5.37kB                                              0.0s
 => => sha256:483d0dd375188d7d3b2d66116d5974d2b67e6988c6146eb2c6a3e2bc33a92121 3.51MB / 3.51MB                                             45.6s
 => => sha256:02a5d22e0d6f85a6ac1c7fb356e9eed39a981decd1fac1205a31f31f4cb010f1 16.21MB / 16.21MB                                          198.4s
 => => sha256:471797cdda8c4cd4a9795c8cb56078e627b3fc7486fd8574804ec7d5f1676b9b 249B / 249B                                                  5.4s
 => => sha256:139020233cc412efe4c8135b0efe1c7569dc8b28ddd88bddb109b764f8977e30 9.13kB / 9.13kB                                              0.0s
 => => extracting sha256:483d0dd375188d7d3b2d66116d5974d2b67e6988c6146eb2c6a3e2bc33a92121                                                   0.3s
 => => extracting sha256:02a5d22e0d6f85a6ac1c7fb356e9eed39a981decd1fac1205a31f31f4cb010f1                                                   1.4s
 => => extracting sha256:471797cdda8c4cd4a9795c8cb56078e627b3fc7486fd8574804ec7d5f1676b9b                                                   0.0s
 => [internal] load build context                                                                                                           0.0s
 => => transferring context: 30B                                                                                                            0.0s
 => [2/3] WORKDIR /myapp                                                                                                                    0.1s
 => [3/3] COPY myapp.py .                                                                                                                   0.0s
 => exporting to image                                                                                                                      0.1s
 => => exporting layers                                                                                                                     0.0s
 => => writing image sha256:7e53249c77101890c935b841592e68be8063a539012f35fda76a6b2f9ab12c13                                                0.0s
 => => naming to docker.io/library/my-python-app                                                                                            0.0s
tush@Tushar:/mnt/d/Pydemopr$ docker image
Usage:  docker image COMMAND

Manage images

Commands:
  build       Build an image from a Dockerfile
  history     Show the history of an image
  import      Import the contents from a tarball to create a filesystem image
  inspect     Display detailed information on one or more images
  load        Load an image from a tar archive or STDIN
  ls          List images
  prune       Remove unused images
  pull        Download an image from a registry
  push        Upload an image to a registry
  rm          Remove one or more images
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE

Run 'docker image COMMAND --help' for more information on a command.
tush@Tushar:/mnt/d/Pydemopr$ ls
Dockerfile  myapp.py  user_info.txt
tush@Tushar:/mnt/d/Pydemopr$ docker images
REPOSITORY      TAG       IMAGE ID       CREATED         SIZE
my-python-app   latest    7e53249c7710   2 minutes ago   130MB
nginx           latest    22bd15417453   6 days ago      192MB
ubuntu          latest    65ae7a6f3544   6 days ago      78.1MB
hello-world     latest    74cc54e27dc4   6 months ago    10.1kB
busybox         latest    6d3e4188a38a   9 months ago    4.28MB
tush@Tushar:/mnt/d/Pydemopr$ docker run -it --rm --name mypythonapp 7e53249c7710
Enter the name you want to store in file  or enter to proceed:Tushar
Do you want to see all user names? y/n: y
Tushar
tush@Tushar:/mnt/d/Pydemopr$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
tush@Tushar:/mnt/d/Pydemopr$ docker run -it --rm -v myvolume:/myapp/ 7e53249c7710
Enter the name you want to store in file  or enter to proceed:Priyansh
Do you want to see all user names? y/n: y
Priyansh
tush@Tushar:/mnt/d/Pydemopr$ docker run -it --rm -v myvolume:/myapp/ 7e53249c7710
Enter the name you want to store in file  or enter to proceed:Raman
Do you want to see all user names? y/n: y
Priyansh
Raman
tush@Tushar:/mnt/d/Pydemopr$ docker volume ls
DRIVER    VOLUME NAME
local     myvolume
tush@Tushar:/mnt/d/Pydemopr$ docker volume inspect myvolume
[
    {
        "CreatedAt": "2025-07-21T08:53:14Z",
        "Driver": "local",
        "Labels": null,
        "Mountpoint": "/var/lib/docker/volumes/myvolume/_data",
        "Name": "myvolume",
        "Options": null,
        "Scope": "local"
    }
]
tush@Tushar:/mnt/d/Pydemopr$
