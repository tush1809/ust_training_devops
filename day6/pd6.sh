ush@Tushar:~$ ssh -i tusharnv.pem ubuntu@44.202.126.212
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1036-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Jul 24 15:09:44 UTC 2025

  System load:  0.14               Processes:              133
  Usage of /:   24.3% of 38.58GB   Users logged in:        1
  Memory usage: 10%                IPv4 address for eth0:  172.31.83.209
  Swap usage:   0%                 IPv4 address for weave: 10.32.0.1

 * Ubuntu Pro delivers the most comprehensive open source security and
   compliance features.

   https://ubuntu.com/aws/pro

Expanded Security Maintenance for Applications is not enabled.

0 updates can be applied immediately.

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status


The list of available updates is more than a week old.
To check for new updates run: sudo apt update
New release '22.04.5 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Thu Jul 24 14:40:00 2025 from 152.59.86.85
ubuntu@kmaster:~$
ubuntu@kmaster:~$ https://github.com/vilasvarghese/docker-k8s
-bash: https://github.com/vilasvarghese/docker-k8s: No such file or directory
ubuntu@kmaster:~$ git clone https://github.com/vilasvarghese/docker-k8s
fatal: destination path 'docker-k8s' already exists and is not an empty directory.
ubuntu@kmaster:~$ ls
docker-k8s
ubuntu@kmaster:~$ cd docker-k8s
ubuntu@kmaster:~/docker-k8s$ docker buid -t tush1809

Command 'docker' not found, but can be installed with:

sudo snap install docker     # version 28.1.1+1, or
sudo apt  install docker.io  # version 24.0.5-0ubuntu1~20.04.1

See 'snap info docker' for additional versions.

ubuntu@kmaster:~/docker-k8s$ apt install docker.io
E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13: Permission denied)
E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), are you root?
ubuntu@kmaster:~/docker-k8s$ sudo snap install docker
docker 28.1.1+1 from Canonical✓ installed
ubuntu@kmaster:~/docker-k8s$ sudo apt  install docker.io
Reading package lists... Done
Building dependency tree
Reading state information... Done
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 docker.io : Depends: containerd (>= 1.2.6-0ubuntu1~)
E: Unable to correct problems, you have held broken packages.
ubuntu@kmaster:~/docker-k8s$ sudo systemctl status docker
Unit docker.service could not be found.
ubuntu@kmaster:~/docker-k8s$ sudo service docker restart
Failed to restart docker.service: Unit docker.service not found.
ubuntu@kmaster:~/docker-k8s$ sudo apt-get remove docker docker-engine docker.io containerd runc
Reading package lists... Done
Building dependency tree
Reading state information... Done
Package 'docker-engine' is not installed, so not removed
Package 'docker' is not installed, so not removed
Package 'containerd' is not installed, so not removed
Package 'runc' is not installed, so not removed
Package 'docker.io' is not installed, so not removed
0 upgraded, 0 newly installed, 0 to remove and 195 not upgraded.
ubuntu@kmaster:~/docker-k8s$ sudo apt-get update
ertificates curl gnupg lsb-release
Hit:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal InRelease
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates InRelease [128 kB]
Get:3 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-backports InRelease [128 kB]
Get:4 https://download.docker.com/linux/ubuntu focal InRelease [57.7 kB]
Get:5 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.26/deb  InRelease [1192 B]
Get:6 http://security.ubuntu.com/ubuntu focal-security InRelease [128 kB]
Get:7 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [3954 kB]
Get:8 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main Translation-en [601 kB]
Get:9 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/main amd64 c-n-f Metadata [18.0 kB]
Get:10 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [3922 kB]
Get:11 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/restricted Translation-en [548 kB]
Get:12 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/restricted amd64 c-n-f Metadata [604 B]
Get:13 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [1262 kB]
Get:14 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe Translation-en [303 kB]
Get:15 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/universe amd64 c-n-f Metadata [29.3 kB]
Get:16 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [29.7 kB]
Get:17 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/multiverse Translation-en [8316 B]
Get:18 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 c-n-f Metadata [688 B]
Get:19 https://download.docker.com/linux/ubuntu focal/stable amd64 Packages [59.9 kB]
Err:5 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.26/deb  InRelease
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 234654DA9A296436
Get:20 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [3564 kB]
Get:21 http://security.ubuntu.com/ubuntu focal-security/main Translation-en [518 kB]
Get:22 http://security.ubuntu.com/ubuntu focal-security/main amd64 c-n-f Metadata [14.4 kB]
Get:23 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [3768 kB]
Get:24 http://security.ubuntu.com/ubuntu focal-security/restricted Translation-en [527 kB]
Get:25 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 c-n-f Metadata [584 B]
Get:26 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [1040 kB]
Get:27 http://security.ubuntu.com/ubuntu focal-security/universe Translation-en [221 kB]
Get:28 http://security.ubuntu.com/ubuntu focal-security/universe amd64 c-n-f Metadata [22.4 kB]
Get:29 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 Packages [26.6 kB]
Get:30 http://security.ubuntu.com/ubuntu focal-security/multiverse Translation-en [6448 B]
Get:31 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 c-n-f Metadata [604 B]
Reading package lists... Done
W: GPG error: https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.26/deb  InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 234654DA9A296436
E: The repository 'https://pkgs.k8s.io/core:/stable:/v1.26/deb  InRelease' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
ubuntu@kmaster:~/docker-k8s$ sudo apt-get install -y ca-certificates curl gnupg lsb-release
Reading package lists... Done
Building dependency tree
Reading state information... Done
lsb-release is already the newest version (11.1.0ubuntu2).
lsb-release set to manually installed.
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 curl : Depends: libcurl4 (= 7.68.0-1ubuntu2.25) but 7.68.0-1ubuntu2.18 is to be installed
 gnupg : Depends: dirmngr (>= 2.2.19-3ubuntu2.5) but 2.2.19-3ubuntu2.2 is to be installed
         Depends: gnupg-l10n (= 2.2.19-3ubuntu2.5) but 2.2.19-3ubuntu2.2 is to be installed
         Depends: gnupg-utils (>= 2.2.19-3ubuntu2.5) but 2.2.19-3ubuntu2.2 is to be installed
         Depends: gpg (>= 2.2.19-3ubuntu2.5) but 2.2.19-3ubuntu2.2 is to be installed
         Depends: gpg-agent (>= 2.2.19-3ubuntu2.5) but 2.2.19-3ubuntu2.2 is to be installed
         Depends: gpg-wks-client (>= 2.2.19-3ubuntu2.5) but 2.2.19-3ubuntu2.2 is to be installed
         Depends: gpg-wks-server (>= 2.2.19-3ubuntu2.5) but 2.2.19-3ubuntu2.2 is to be installed
         Depends: gpgsm (>= 2.2.19-3ubuntu2.5) but 2.2.19-3ubuntu2.2 is to be installed
         Depends: gpgv (>= 2.2.19-3ubuntu2.5) but 2.2.19-3ubuntu2.2 is to be installed
         Breaks: dirmngr (< 2.2.19-3ubuntu2.5) but 2.2.19-3ubuntu2.2 is to be installed
E: Unable to correct problems, you have held broken packages.
ubuntu@kmaster:~/docker-k8s$ sudo mkdir -p /etc/apt/keyrings
ubuntu@kmaster:~/docker-k8s$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
>   sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
ubuntu@kmaster:~/docker-k8s$ echo \
>   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
>   https://download.docker.com/linux/ubuntu \
>   $(lsb_release -cs) stable" | \
>   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
ubuntu@kmaster:~/docker-k8s$
ubuntu@kmaster:~/docker-k8s$ sudo apt-get update
Hit:1 http://security.ubuntu.com/ubuntu focal-security InRelease
Hit:2 https://download.docker.com/linux/ubuntu focal InRelease
Hit:3 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal InRelease
Hit:4 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates InRelease
Hit:5 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-backports InRelease
Get:6 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.26/deb  InRelease [1192 B]
Err:6 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.26/deb  InRelease
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 234654DA9A296436
Reading package lists... Done
W: GPG error: https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.26/deb  InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 234654DA9A296436
E: The repository 'https://pkgs.k8s.io/core:/stable:/v1.26/deb  InRelease' is not signed.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
ubuntu@kmaster:~/docker-k8s$ sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  docker-ce-rootless-extras pigz slirp4netns
Suggested packages:
  cgroupfs-mount | cgroup-lite
The following NEW packages will be installed:
  docker-buildx-plugin docker-ce docker-ce-cli docker-ce-rootless-extras
  docker-compose-plugin pigz slirp4netns
The following packages will be upgraded:
  containerd.io
1 upgraded, 7 newly installed, 0 to remove and 243 not upgraded.
Need to get 120 MB of archives.
After this operation, 321 MB of additional disk space will be used.
Get:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/universe amd64 pigz amd64 2.4-1 [57.4 kB]
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal/universe amd64 slirp4netns amd64 0.4.3-1 [74.3 kB]
Get:3 https://download.docker.com/linux/ubuntu focal/stable amd64 containerd.io amd64 1.7.27-1 [30.5 MB]
Get:4 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-buildx-plugin amd64 0.23.0-1~ubuntu.20.04~focal [34.6 MB]
Get:5 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce-cli amd64 5:28.1.1-1~ubuntu.20.04~focal [15.8 MB]
Get:6 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce amd64 5:28.1.1-1~ubuntu.20.04~focal [19.2 MB]
Get:7 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-ce-rootless-extras amd64 5:28.1.1-1~ubuntu.20.04~focal [6097 kB]
Get:8 https://download.docker.com/linux/ubuntu focal/stable amd64 docker-compose-plugin amd64 2.35.1-1~ubuntu.20.04~focal [13.8 MB]
Fetched 120 MB in 2s (61.7 MB/s)
Selecting previously unselected package pigz.
(Reading database ... 68477 files and directories currently installed.)
Preparing to unpack .../0-pigz_2.4-1_amd64.deb ...
Unpacking pigz (2.4-1) ...
Preparing to unpack .../1-containerd.io_1.7.27-1_amd64.deb ...
Unpacking containerd.io (1.7.27-1) over (1.6.31-1) ...
Selecting previously unselected package docker-buildx-plugin.
Preparing to unpack .../2-docker-buildx-plugin_0.23.0-1~ubuntu.20.04~focal_amd64.deb ...
Unpacking docker-buildx-plugin (0.23.0-1~ubuntu.20.04~focal) ...
Selecting previously unselected package docker-ce-cli.
Preparing to unpack .../3-docker-ce-cli_5%3a28.1.1-1~ubuntu.20.04~focal_amd64.deb ...
Unpacking docker-ce-cli (5:28.1.1-1~ubuntu.20.04~focal) ...
Selecting previously unselected package docker-ce.
Preparing to unpack .../4-docker-ce_5%3a28.1.1-1~ubuntu.20.04~focal_amd64.deb ...
Unpacking docker-ce (5:28.1.1-1~ubuntu.20.04~focal) ...
Selecting previously unselected package docker-ce-rootless-extras.
Preparing to unpack .../5-docker-ce-rootless-extras_5%3a28.1.1-1~ubuntu.20.04~focal_amd64.deb ...
Unpacking docker-ce-rootless-extras (5:28.1.1-1~ubuntu.20.04~focal) ...
Selecting previously unselected package docker-compose-plugin.
Preparing to unpack .../6-docker-compose-plugin_2.35.1-1~ubuntu.20.04~focal_amd64.deb ...
Unpacking docker-compose-plugin (2.35.1-1~ubuntu.20.04~focal) ...
Selecting previously unselected package slirp4netns.
Preparing to unpack .../7-slirp4netns_0.4.3-1_amd64.deb ...
Unpacking slirp4netns (0.4.3-1) ...
Setting up slirp4netns (0.4.3-1) ...
Setting up docker-buildx-plugin (0.23.0-1~ubuntu.20.04~focal) ...
Setting up containerd.io (1.7.27-1) ...
Setting up docker-compose-plugin (2.35.1-1~ubuntu.20.04~focal) ...
Setting up docker-ce-cli (5:28.1.1-1~ubuntu.20.04~focal) ...
Setting up pigz (2.4-1) ...
Setting up docker-ce-rootless-extras (5:28.1.1-1~ubuntu.20.04~focal) ...
Setting up docker-ce (5:28.1.1-1~ubuntu.20.04~focal) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
Processing triggers for systemd (245.4-4ubuntu3.21) ...
ubuntu@kmaster:~/docker-k8s$ sudo systemctl start docker
ubuntu@kmaster:~/docker-k8s$ sudo systemctl enable docker
Synchronizing state of docker.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable docker
ubuntu@kmaster:~/docker-k8s$
ubuntu@kmaster:~/docker-k8s$ sudo docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
e6590344b1a5: Pull complete
Digest: sha256:ec153840d1e635ac434fab5e377081f17e0e15afab27beb3f726c3265039cfff
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

ubuntu@kmaster:~/docker-k8s$ sudo systemctl status docker
● docker.service - Docker Application Container Engine
     Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor pr>
     Active: active (running) since Thu 2025-07-24 15:25:44 UTC; 43s ago
TriggeredBy: ● docker.socket
       Docs: https://docs.docker.com
   Main PID: 38222 (dockerd)
      Tasks: 11
     Memory: 26.3M
     CGroup: /system.slice/docker.service
             └─38222 /usr/bin/dockerd -H fd:// --containerd=/run/containerd>

Jul 24 15:25:44 kmaster dockerd[38222]: time="2025-07-24T15:25:44.274961379>
Jul 24 15:25:44 kmaster dockerd[38222]: time="2025-07-24T15:25:44.620739575>
Jul 24 15:25:44 kmaster dockerd[38222]: time="2025-07-24T15:25:44.828759387>
Jul 24 15:25:44 kmaster dockerd[38222]: time="2025-07-24T15:25:44.867873700>
Jul 24 15:25:44 kmaster dockerd[38222]: time="2025-07-24T15:25:44.868000383>
Jul 24 15:25:44 kmaster dockerd[38222]: time="2025-07-24T15:25:44.906501994>
Jul 24 15:25:44 kmaster dockerd[38222]: time="2025-07-24T15:25:44.917278945>
Jul 24 15:25:44 kmaster dockerd[38222]: time="2025-07-24T15:25:44.917335398>
Jul 24 15:25:44 kmaster systemd[1]: Started Docker Application Container En>
Jul 24 15:26:04 kmaster dockerd[38222]: time="2025-07-24T15:26:04.720773050>

ubuntu@kmaster:~/docker-k8s$ docker login -u tush1809 -p
flag needs an argument: 'p' in -p

Usage:  docker login [OPTIONS] [SERVER]

Run 'docker login --help' for more information
ubuntu@kmaster:~/docker-k8s$ docker login -u tush1809

i Info → A Personal Access Token (PAT) can be used instead.
         To create a PAT, visit https://app.docker.com/settings


Password:

WARNING! Your credentials are stored unencrypted in '/home/ubuntu/.docker/config.json'.
Configure a credential helper to remove this warning. See
https://docs.docker.com/go/credential-store/

Login Succeeded
ubuntu@kmaster:~/docker-k8s$ docker push tush1809/my-app
Using default tag: latest
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Post "http://%2Fvar%2Frun%2Fdocker.sock/v1.49/images/docker.io/tush1809/my-app/push?tag=latest": dial unix /var/run/docker.sock: connect: permission denied
ubuntu@kmaster:~/docker-k8s$ sudo docker push tush1809/my-app
Using default tag: latest
The push refers to repository [docker.io/tush1809/my-app]
An image does not exist locally with the tag: tush1809/my-app
ubuntu@kmaster:~/docker-k8s$ sudo docker images
REPOSITORY    TAG       IMAGE ID       CREATED        SIZE
hello-world   latest    74cc54e27dc4   6 months ago   10.1kB
ubuntu@kmaster:~/docker-k8s$ sudo docker build -t tush1809/my-app .
[+] Building 65.0s (13/13) FINISHED                                 docker:default
 => [internal] load build definition from Dockerfile                          0.0s
 => => transferring dockerfile: 520B                                          0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest              0.3s
 => [internal] load .dockerignore                                             0.0s
 => => transferring context: 2B                                               0.0s
 => [1/8] FROM docker.io/library/ubuntu:latest@sha256:a08e551cb33850e4740772  2.2s
 => => resolve docker.io/library/ubuntu:latest@sha256:a08e551cb33850e4740772  0.0s
 => => sha256:a08e551cb33850e4740772b38217fc1796a66da2506d31 6.69kB / 6.69kB  0.0s
 => => sha256:4f1db91d9560cf107b5832c0761364ec64f46777aa4ec637cc 424B / 424B  0.0s
 => => sha256:65ae7a6f3544bd2d2b6d19b13bfc64752d776bc92c510f 2.30kB / 2.30kB  0.0s
 => => sha256:32f112e3802cadcab3543160f4d2aa607b3cc1c62140 29.72MB / 29.72MB  0.4s
 => => extracting sha256:32f112e3802cadcab3543160f4d2aa607b3cc1c62140d57b4f5  1.6s
 => [internal] load build context                                             0.0s
 => => transferring context: 3.41kB                                           0.0s
 => [2/8] RUN apt-get -y update && apt-get -y upgrade                         7.3s
 => [3/8] RUN apt-get -y install openjdk-8-jdk wget                          45.1s
 => [4/8] RUN mkdir /usr/local/tomcat                                         0.3s
 => [5/8] RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.107/bin  2.2s
 => [6/8] RUN cd /tmp && tar xvfz tomcat.tar.gz                               0.7s
 => [7/8] RUN cp -Rv /tmp/apache-tomcat-9.0.107/* /usr/local/tomcat/          0.4s
 => [8/8] COPY target/HelloWorld-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapp  0.1s
 => exporting to image                                                        6.1s
 => => exporting layers                                                       6.0s
 => => writing image sha256:c2129bc154d54ac533cf7ac26a8dc44d31a20f3012d58a2a  0.0s
 => => naming to docker.io/tush1809/my-app                                    0.0s

 1 warning found (use docker --debug to expand):
 - JSONArgsRecommended: JSON arguments recommended for CMD to prevent unintended behavior related to OS signals (line 10)
ubuntu@kmaster:~/docker-k8s$ sudo docker images
REPOSITORY        TAG       IMAGE ID       CREATED          SIZE
tush1809/my-app   latest    c2129bc154d5   33 seconds ago   819MB
hello-world       latest    74cc54e27dc4   6 months ago     10.1kB
ubuntu@kmaster:~/docker-k8s$ sudo docker push tush1809/my-app
Using default tag: latest
The push refers to repository [docker.io/tush1809/my-app]
a84eca1392ac: Preparing
ffc1ddf5975e: Preparing
2a13159857cd: Preparing
8009b5a01ec0: Preparing
6c681bcdf75d: Preparing
f8abfa8a9338: Waiting
3ba9f78926c2: Waiting
107cbdaeec04: Waiting
denied: requested access to the resource is denied
ubuntu@kmaster:~/docker-k8s$ sudo docker login

USING WEB-BASED LOGIN

i Info → To sign in with credentials on the command line, use 'docker login -u <username>'


Your one-time device confirmation code is: JQWT-LPGL
Press ENTER to open your browser or submit your device code here: https://login.docker.com/activate

Waiting for authentication in the browser…


WARNING! Your credentials are stored unencrypted in '/root/.docker/config.json'.
Configure a credential helper to remove this warning. See
https://docs.docker.com/go/credential-store/

Error response from daemon: Get "https://registry-1.docker.io/v2/": unauthorized: incorrect username or password
ubuntu@kmaster:~/docker-k8s$ sudo docker login

USING WEB-BASED LOGIN

i Info → To sign in with credentials on the command line, use 'docker login -u <username>'


Your one-time device confirmation code is: CMZM-TQLN
Press ENTER to open your browser or submit your device code here: https://login.docker.com/activate

Waiting for authentication in the browser…

WARNING! Your credentials are stored unencrypted in '/root/.docker/config.json'.
Configure a credential helper to remove this warning. See
https://docs.docker.com/go/credential-store/

Error response from daemon: Get "https://registry-1.docker.io/v2/": unauthorized: incorrect username or password
