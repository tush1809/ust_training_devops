tush@Tushar:~$ ssh -i tusharnv.pem ubuntu@44.201.194.164
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1036-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Sat Jul 26 10:31:57 UTC 2025

  System load:                      0.02
  Usage of /:                       9.7% of 96.73GB
  Memory usage:                     11%
  Swap usage:                       0%
  Processes:                        165
  Users logged in:                  1
  IPv4 address for br-8352c37afb86: 172.18.0.1
  IPv4 address for docker0:         172.17.0.1
  IPv4 address for eth0:            172.31.82.237
  IPv4 address for weave:           10.32.0.1

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


Last login: Sat Jul 26 09:36:06 2025 from 152.58.97.225
ubuntu@kmaster:~$ docker network create my_network
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Head "http://%2Fvar%2Frun%2Fdocker.sock/_ping": dial unix /var/run/docker.sock: connect: permission denied
ubuntu@kmaster:~$ sudo su
root@kmaster:/home/ubuntu# docker network create my_network
32e94136359a643be0da7a4ef3d568829091d34a08e8a359397303b57efc3f95
root@kmaster:/home/ubuntu# docker network ls
NETWORK ID     NAME         DRIVER    SCOPE
93c13137863c   bridge       bridge    local
ea3f4a732cbf   host         host      local
32e94136359a   my_network   bridge    local
8352c37afb86   mybridge     bridge    local
7463b1f931c0   none         null      local
root@kmaster:/home/ubuntu# docker network inspect my_network
[
    {
        "Name": "my_network",
        "Id": "32e94136359a643be0da7a4ef3d568829091d34a08e8a359397303b57efc3f95",
        "Created": "2025-07-26T10:32:36.054760555Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv4": true,
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.19.0.0/16",
                    "Gateway": "172.19.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {},
        "Options": {},
        "Labels": {}
    }
]
root@kmaster:/home/ubuntu# docker pps
docker: unknown command: docker pps

Run 'docker --help' for more information
root@kmaster:/home/ubuntu# docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
root@kmaster:/home/ubuntu# docker run -d --name T1 --network my_network nginx
0bb043db029a7c4303e64606ad4c22fef65c2f5097c46880e01f20ba19038772
root@kmaster:/home/ubuntu# docker run -d --name T2 --network my_network nginx
a654f7087dbd18a978053567de6d24b770eb89a4155299c5a88d6b542d726385
root@kmaster:/home/ubuntu# docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS     NAMES
a654f7087dbd   nginx     "/docker-entrypoint.…"   21 seconds ago   Up 20 seconds   80/tcp    T2
0bb043db029a   nginx     "/docker-entrypoint.…"   46 seconds ago   Up 45 seconds   80/tcp    T1
root@kmaster:/home/ubuntu# docker network inspect my_network
[
    {
        "Name": "my_network",
        "Id": "32e94136359a643be0da7a4ef3d568829091d34a08e8a359397303b57efc3f95",
        "Created": "2025-07-26T10:32:36.054760555Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv4": true,
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.19.0.0/16",
                    "Gateway": "172.19.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "0bb043db029a7c4303e64606ad4c22fef65c2f5097c46880e01f20ba19038772": {
                "Name": "T1",
                "EndpointID": "9c07d47eded98a6509c47741bdfee7ded3fd2354a460d25311f29250b6ab8c51",
                "MacAddress": "2e:ee:d8:be:b9:a0",
                "IPv4Address": "172.19.0.2/16",
                "IPv6Address": ""
            },
            "a654f7087dbd18a978053567de6d24b770eb89a4155299c5a88d6b542d726385": {
                "Name": "T2",
                "EndpointID": "75524be308c7f0b68a646ca0bb003efa9be3c1e1181f82080d63714c2efd0db3",
                "MacAddress": "c2:75:b6:3e:4e:8d",
                "IPv4Address": "172.19.0.3/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {}
    }
]
