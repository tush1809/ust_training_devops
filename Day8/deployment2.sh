ubuntu@kmaster:~$ docker ps

Command 'docker' not found, but can be installed with:

sudo snap install docker     # version 28.1.1+1, or
sudo apt  install docker.io  # version 24.0.5-0ubuntu1~20.04.1

See 'snap info docker' for additional versions.

ubuntu@kmaster:~$
ubuntu@kmaster:~$ sudo snap install docker
docker 28.1.1+1 from Canonical✓ installed
ubuntu@kmaster:~$ docker network create mybridge
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Head "http://%2Fvar%2Frun%2Fdocker.sock/_ping": dial unix /var/run/docker.sock: connect: permission denied
ubuntu@kmaster:~$ sudo docker network create mybridge
8352c37afb86d9c75b1c41a8f60a97520a426c1cb65327a304eca63ac5a95daa
ubuntu@kmaster:~$ docker networl ls
docker: unknown command: docker networl

Run 'docker --help' for more information
ubuntu@kmaster:~$ docker network ls
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.48/networks": dial unix /var/run/docker.sock: connect: permission denied
ubuntu@kmaster:~$ sudo docker network ls
NETWORK ID     NAME       DRIVER    SCOPE
b0e0b6c66f1b   bridge     bridge    local
ea3f4a732cbf   host       host      local
8352c37afb86   mybridge   bridge    local
7463b1f931c0   none       null      local
ubuntu@kmaster:~$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9001 qdisc prio state UP group default qlen 1000
    link/ether 12:96:a5:c2:78:15 brd ff:ff:ff:ff:ff:ff
    inet 172.31.82.237/20 brd 172.31.95.255 scope global dynamic eth0
       valid_lft 2552sec preferred_lft 2552sec
    inet6 fe80::1096:a5ff:fec2:7815/64 scope link
       valid_lft forever preferred_lft forever
3: datapath: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1376 qdisc noqueue state UNKNOWN group default qlen 1000
    link/ether 02:b5:b2:3a:19:30 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::b5:b2ff:fe3a:1930/64 scope link
       valid_lft forever preferred_lft forever
5: weave: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1376 qdisc noqueue state UP group default qlen 1000
    link/ether ce:dc:5e:cc:97:f4 brd ff:ff:ff:ff:ff:ff
    inet 10.32.0.1/12 brd 10.47.255.255 scope global weave
       valid_lft forever preferred_lft forever
    inet6 fe80::ccdc:5eff:fecc:97f4/64 scope link
       valid_lft forever preferred_lft forever
7: vethwe-datapath@vethwe-bridge: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1376 qdisc noqueue master datapath state UP group default
    link/ether 1e:55:c1:4b:ee:b9 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::1c55:c1ff:fe4b:eeb9/64 scope link
       valid_lft forever preferred_lft forever
8: vethwe-bridge@vethwe-datapath: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1376 qdisc noqueue master weave state UP group default
    link/ether d6:5d:b2:e2:bb:0a brd ff:ff:ff:ff:ff:ff
    inet6 fe80::d45d:b2ff:fee2:bb0a/64 scope link
       valid_lft forever preferred_lft forever
9: vxlan-6784: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 65535 qdisc noqueue master datapath state UNKNOWN group default qlen 1000
    link/ether 2e:f6:a2:2b:58:5b brd ff:ff:ff:ff:ff:ff
    inet6 fe80::2cf6:a2ff:fe2b:585b/64 scope link
       valid_lft forever preferred_lft forever
11: vethwepl3f467dd@if10: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1376 qdisc noqueue master weave state UP group default
    link/ether be:0d:65:61:ac:be brd ff:ff:ff:ff:ff:ff link-netns cni-892aa284-df51-e271-8281-193a27718cf5
    inet6 fe80::bc0d:65ff:fe61:acbe/64 scope link
       valid_lft forever preferred_lft forever
13: vethwepl9ce0d9a@if12: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1376 qdisc noqueue master weave state UP group default
    link/ether f2:d5:2f:d6:10:93 brd ff:ff:ff:ff:ff:ff link-netns cni-9788d987-908d-2598-5594-8774bed0e849
    inet6 fe80::f0d5:2fff:fed6:1093/64 scope link
       valid_lft forever preferred_lft forever
17: vethwepl287821c@if16: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1376 qdisc noqueue master weave state UP group default
    link/ether 82:8c:dd:19:25:3d brd ff:ff:ff:ff:ff:ff link-netns cni-d00a7e63-2d3a-40ce-86d9-3e325631023d
    inet6 fe80::808c:ddff:fe19:253d/64 scope link
       valid_lft forever preferred_lft forever
18: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default
    link/ether da:52:14:98:b9:0b brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
       valid_lft forever preferred_lft forever
19: br-8352c37afb86: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default
    link/ether 86:20:f4:f3:c6:bc brd ff:ff:ff:ff:ff:ff
    inet 172.18.0.1/16 brd 172.18.255.255 scope global br-8352c37afb86
       valid_lft forever preferred_lft forever
ubuntu@kmaster:~$ docker container ps
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.48/containers/json": dial unix /var/run/docker.sock: connect: permission denied
ubuntu@kmaster:~$ sudo su
root@kmaster:/home/ubuntu# docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
root@kmaster:/home/ubuntu# docker run -d --name testcontainer nginx
Unable to find image 'nginx:latest' locally
latest: Pulling from library/nginx
59e22667830b: Pull complete
140da4f89dcb: Pull complete
96e47e70491e: Pull complete
2ef442a3816e: Pull complete
4b1e45a9989f: Pull complete
1d9f51194194: Pull complete
f30ffbee4c54: Pull complete
Digest: sha256:84ec966e61a8c7846f509da7eb081c55c1d56817448728924a87ab32f12a72fb
Status: Downloaded newer image for nginx:latest
976e6c70a5c07ab68369210aabc8a8df2fba727c4e62d515d07c9697f70818ad
root@kmaster:/home/ubuntu# docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS     NAMES
976e6c70a5c0   nginx     "/docker-entrypoint.…"   7 seconds ago   Up 5 seconds   80/tcp    testcontainer
root@kmaster:/home/ubuntu# docker container inspect f7
[]
Error response from daemon: No such container: f7
root@kmaster:/home/ubuntu# docker container inspect 976e6c70a5c0
[
    {
        "Id": "976e6c70a5c07ab68369210aabc8a8df2fba727c4e62d515d07c9697f70818ad",
        "Created": "2025-07-25T10:53:41.452845886Z",
        "Path": "/docker-entrypoint.sh",
        "Args": [
            "nginx",
            "-g",
            "daemon off;"
        ],
        "State": {
            "Status": "running",
            "Running": true,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 10495,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2025-07-25T10:53:42.268329999Z",
            "FinishedAt": "0001-01-01T00:00:00Z"
        },
        "Image": "sha256:2cd1d97f893f70cee86a38b7160c30e5750f3ed6ad86c598884ca9c6a563a501",
        "ResolvConfPath": "/var/snap/docker/common/var-lib-docker/containers/976e6c70a5c07ab68369210aabc8a8df2fba727c4e62d515d07c9697f70818ad/resolv.conf",
        "HostnamePath": "/var/snap/docker/common/var-lib-docker/containers/976e6c70a5c07ab68369210aabc8a8df2fba727c4e62d515d07c9697f70818ad/hostname",
        "HostsPath": "/var/snap/docker/common/var-lib-docker/containers/976e6c70a5c07ab68369210aabc8a8df2fba727c4e62d515d07c9697f70818ad/hosts",
        "LogPath": "/var/snap/docker/common/var-lib-docker/containers/976e6c70a5c07ab68369210aabc8a8df2fba727c4e62d515d07c9697f70818ad/976e6c70a5c07ab68369210aabc8a8df2fba727c4e62d515d07c9697f70818ad-json.log",
        "Name": "/testcontainer",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "docker-default",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": null,
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {}
            },
            "NetworkMode": "bridge",
            "PortBindings": {},
            "RestartPolicy": {
                "Name": "no",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "ConsoleSize": [
                41,
                76
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
            "Ulimits": [],
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/asound",
                "/proc/acpi",
                "/proc/interrupts",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware",
                "/sys/devices/virtual/powercap"
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
                "ID": "976e6c70a5c07ab68369210aabc8a8df2fba727c4e62d515d07c9697f70818ad",
                "LowerDir": "/var/snap/docker/common/var-lib-docker/overlay2/ba154cd94707bb7b89814bf9e51b7e11baa4b700181d7083d690f57e4e740ead-init/diff:/var/snap/docker/common/var-lib-docker/overlay2/e783b5ed529bd9511e881edf46dbe6e8a8867be699f06f05d1009f37b9669d55/diff:/var/snap/docker/common/var-lib-docker/overlay2/204209b9b2ed2f3da18e11e02f8f49a11c660439bd5467f3a51990dc607db53f/diff:/var/snap/docker/common/var-lib-docker/overlay2/ac088b1dce1502575a2acb9ed94240ed264687c2c5a68954ed4945c4b4956fe6/diff:/var/snap/docker/common/var-lib-docker/overlay2/ff91ac3ed3b1353e4385f2318fbaf84dc621294006d58837e8d4d9711864d004/diff:/var/snap/docker/common/var-lib-docker/overlay2/ce29e998c2d99fb5de311fbebc68af9fea37e8d77a4fac10dd942687b3f19ed4/diff:/var/snap/docker/common/var-lib-docker/overlay2/878635717a4b99ecf02b6d94c757924ce3c6b39896934af45a8321104599a7f2/diff:/var/snap/docker/common/var-lib-docker/overlay2/5c4487060c813ec49e6a62b02f48880fc347312e519e2fd901bbd79991cf1a90/diff",
                "MergedDir": "/var/snap/docker/common/var-lib-docker/overlay2/ba154cd94707bb7b89814bf9e51b7e11baa4b700181d7083d690f57e4e740ead/merged",
                "UpperDir": "/var/snap/docker/common/var-lib-docker/overlay2/ba154cd94707bb7b89814bf9e51b7e11baa4b700181d7083d690f57e4e740ead/diff",
                "WorkDir": "/var/snap/docker/common/var-lib-docker/overlay2/ba154cd94707bb7b89814bf9e51b7e11baa4b700181d7083d690f57e4e740ead/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [],
        "Config": {
            "Hostname": "976e6c70a5c0",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "80/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "NGINX_VERSION=1.29.0",
                "NJS_VERSION=0.9.0",
                "NJS_RELEASE=1~bookworm",
                "PKG_RELEASE=1~bookworm",
                "DYNPKG_RELEASE=1~bookworm"
            ],
            "Cmd": [
                "nginx",
                "-g",
                "daemon off;"
            ],
            "Image": "nginx",
            "Volumes": null,
            "WorkingDir": "",
            "Entrypoint": [
                "/docker-entrypoint.sh"
            ],
            "OnBuild": null,
            "Labels": {
                "maintainer": "NGINX Docker Maintainers <docker-maint@nginx.com>"
            },
            "StopSignal": "SIGQUIT"
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "6de1a1097e541904079e95f977bb6ade381e4ef0d31f256d6cfd5758ce6b2656",
            "SandboxKey": "/run/snap.docker/netns/6de1a1097e54",
            "Ports": {
                "80/tcp": null
            },
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "75a2cb43093d11c4036819fd6fec758f776632e6a638fe0aad36e8265fe734f7",
            "Gateway": "172.17.0.1",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "172.17.0.2",
            "IPPrefixLen": 16,
            "IPv6Gateway": "",
            "MacAddress": "5e:9a:5c:1e:53:1a",
            "Networks": {
                "bridge": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": null,
                    "MacAddress": "5e:9a:5c:1e:53:1a",
                    "DriverOpts": null,
                    "GwPriority": 0,
                    "NetworkID": "b0e0b6c66f1b77f1ec986d81ba7c26e3b4735ad46c756760ada0a817ee579d5d",
                    "EndpointID": "75a2cb43093d11c4036819fd6fec758f776632e6a638fe0aad36e8265fe734f7",
                    "Gateway": "172.17.0.1",
                    "IPAddress": "172.17.0.2",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "DNSNames": null
                }
            }
        }
    }
]
