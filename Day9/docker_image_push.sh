Welcome to Ubuntu 24.04.2 LTS (GNU/Linux 6.6.87.2-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Sat Jul 26 07:53:05 UTC 2025

  System load:  0.88                Processes:             65
  Usage of /:   0.3% of 1006.85GB   Users logged in:       0
  Memory usage: 11%                 IPv4 address for eth0: 172.19.97.216
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

This message is shown once a day. To disable it please create the
/home/tush/.hushlogin file.
tush@Tushar:~$ ssh -i tusharnv.pem ubuntu@44.201.194.164
The authenticity of host '44.201.194.164 (44.201.194.164)' can't be established.
ED25519 key fingerprint is SHA256:Yqtg4HwFA6LpDh2stsSjQLIttQi/63RDNI+tsDV+3hA.
This host key is known by the following other names/addresses:
    ~/.ssh/known_hosts:14: [hashed name]
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '44.201.194.164' (ED25519) to the list of known hosts.
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1036-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Sat Jul 26 07:53:18 UTC 2025

  System load:                      0.95
  Usage of /:                       8.5% of 96.73GB
  Memory usage:                     9%
  Swap usage:                       0%
  Processes:                        161
  Users logged in:                  0
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

Last login: Fri Jul 25 13:08:48 2025 from 152.59.86.10
ubuntu@kmaster:~$ docker ps
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.48/containers/json": dial unix /var/run/docker.sock: connect: permission denied
ubuntu@kmaster:~$ sudo su
root@kmaster:/home/ubuntu# docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
root@kmaster:/home/ubuntu# docker get nodes
docker: unknown command: docker get

Run 'docker --help' for more information
root@kmaster:/home/ubuntu# kubectl get pods
NAME                              READY   STATUS    RESTARTS        AGE
nginx-deployment-f5d9744f-755v7   1/1     Running   1 (2m23s ago)   19h
vilaspod                          1/1     Running   1 (2m23s ago)   23h
root@kmaster:/home/ubuntu# docker login

USING WEB-BASED LOGIN

i Info → To sign in with credentials on the command line, use 'docker login -u <username>'


Your one-time device confirmation code is: KLFV-LWHV
Press ENTER to open your browser or submit your device code here: https://login.docker.com/activate

Waiting for authentication in the browser…

WARNING! Your credentials are stored unencrypted in '/root/snap/docker/3265/.docker/config.json'.
Configure a credential helper to remove this warning. See
https://docs.docker.com/go/credential-store/

Error response from daemon: Get "https://registry-1.docker.io/v2/": unauthorized: email must be verified before using account
root@kmaster:/home/ubuntu# docker login

USING WEB-BASED LOGIN

i Info → To sign in with credentials on the command line, use 'docker login -u <username>'


Your one-time device confirmation code is: VRBG-JBKP
Press ENTER to open your browser or submit your device code here: https://login.docker.com/activate

Waiting for authentication in the browser…

WARNING! Your credentials are stored unencrypted in '/root/snap/docker/3265/.docker/config.json'.
Configure a credential helper to remove this warning. See
https://docs.docker.com/go/credential-store/

Login Succeeded
root@kmaster:/home/ubuntu# ls
docker-k8s  snap
root@kmaster:/home/ubuntu# mkdir my_docker_app
root@kmaster:/home/ubuntu# cd my_docker_app
root@kmaster:/home/ubuntu/my_docker_app# nano app.py
root@kmaster:/home/ubuntu/my_docker_app# nano requirement.txt
root@kmaster:/home/ubuntu/my_docker_app# nano Dockerfile
root@kmaster:/home/ubuntu/my_docker_app# docker build -t tush1809/my-app:latest .
[+] Building 5.4s (9/9) FINISHED                                             docker:default
 => [internal] load build definition from Dockerfile                                   0.0s
 => => transferring dockerfile: 147B                                                   0.0s
 => [internal] load metadata for docker.io/library/python:3.10-slim                    0.4s
 => [auth] library/python:pull token for registry-1.docker.io                          0.0s
 => [internal] load .dockerignore                                                      0.0s
 => => transferring context: 2B                                                        0.0s
 => [1/4] FROM docker.io/library/python:3.10-slim@sha256:81f1cdb3770d54ecfdbddcc52c21  1.7s
 => => resolve docker.io/library/python:3.10-slim@sha256:81f1cdb3770d54ecfdbddcc52c21  0.0s
 => => sha256:3fa1124e7cf3ed5061a51b47c3e7a138e1b25dce3c94e9967a6b2 15.65MB / 15.65MB  0.3s
 => => sha256:00aa2453f38062a311a828d4d0790d1911a81372ad928c8856387ceccc7 250B / 250B  0.1s
 => => sha256:81f1cdb3770d54ecfdbddcc52c2125fce674c14a1d976dfd8f65dc0 9.13kB / 9.13kB  0.0s
 => => sha256:5b73bbad254f55db4a64a6d5b4f237327f8be74d0b3caa953c59be1 1.75kB / 1.75kB  0.0s
 => => sha256:13839a48c354366e5535d8d9d6b5540b5d06814ca2befbee62af385 5.37kB / 5.37kB  0.0s
 => => sha256:12b8240e46e9f448e7eba19870e233d03c7160ca9b1777ab3ec2eed 3.51MB / 3.51MB  0.1s
 => => extracting sha256:12b8240e46e9f448e7eba19870e233d03c7160ca9b1777ab3ec2eeddf434  0.2s
 => => extracting sha256:3fa1124e7cf3ed5061a51b47c3e7a138e1b25dce3c94e9967a6b2a9acfe3  1.1s
 => => extracting sha256:00aa2453f38062a311a828d4d0790d1911a81372ad928c8856387ceccc7a  0.0s
 => [internal] load build context                                                      0.0s
 => => transferring context: 246B                                                      0.0s
 => [2/4] WORKDIR /app                                                                 0.2s
 => [3/4] COPY . .                                                                     0.0s
 => ERROR [4/4] RUN pip install -r requirements.txt                                    2.9s
------
 > [4/4] RUN pip install -r requirements.txt:
2.344 ERROR: Could not open requirements file: [Errno 2] No such file or directory: 'requirements.txt'
2.512
2.512 [notice] A new release of pip is available: 23.0.1 -> 25.1.1
2.512 [notice] To update, run: pip install --upgrade pip
------
Dockerfile:7
--------------------
   5 |     COPY . .
   6 |
   7 | >>> RUN pip install -r requirements.txt
   8 |
   9 |     CMD ["python", "app.py"]
--------------------
ERROR: failed to solve: process "/bin/sh -c pip install -r requirements.txt" did not complete successfully: exit code: 1
root@kmaster:/home/ubuntu/my_docker_app# touch requirement.txt
root@kmaster:/home/ubuntu/my_docker_app# docker build -t tush1809/my-app:latest .
[+] Building 2.8s (8/8) FINISHED                                             docker:default
 => [internal] load build definition from Dockerfile                                   0.0s
 => => transferring dockerfile: 147B                                                   0.0s
 => [internal] load metadata for docker.io/library/python:3.10-slim                    0.1s
 => [internal] load .dockerignore                                                      0.0s
 => => transferring context: 2B                                                        0.0s
 => [1/4] FROM docker.io/library/python:3.10-slim@sha256:81f1cdb3770d54ecfdbddcc52c21  0.0s
 => [internal] load build context                                                      0.0s
 => => transferring context: 92B                                                       0.0s
 => CACHED [2/4] WORKDIR /app                                                          0.0s
 => CACHED [3/4] COPY . .                                                              0.0s
 => ERROR [4/4] RUN pip install -r requirements.txt                                    2.6s
------
 > [4/4] RUN pip install -r requirements.txt:
2.111 ERROR: Could not open requirements file: [Errno 2] No such file or directory: 'requirements.txt'
2.265
2.265 [notice] A new release of pip is available: 23.0.1 -> 25.1.1
2.265 [notice] To update, run: pip install --upgrade pip
------
Dockerfile:7
--------------------
   5 |     COPY . .
   6 |
   7 | >>> RUN pip install -r requirements.txt
   8 |
   9 |     CMD ["python", "app.py"]
--------------------
ERROR: failed to solve: process "/bin/sh -c pip install -r requirements.txt" did not complete successfully: exit code: 1
root@kmaster:/home/ubuntu/my_docker_app# nano Dockerfile
root@kmaster:/home/ubuntu/my_docker_app# docker build -t tush1809/my-app:latest .
[+] Building 0.3s (9/9) FINISHED                                             docker:default
 => [internal] load build definition from Dockerfile                                   0.0s
 => => transferring dockerfile: 110B                                                   0.0s
 => [internal] load metadata for docker.io/library/python:3.10-slim                    0.1s
 => [auth] library/python:pull token for registry-1.docker.io                          0.0s
 => [internal] load .dockerignore                                                      0.0s
 => => transferring context: 2B                                                        0.0s
 => [1/3] FROM docker.io/library/python:3.10-slim@sha256:81f1cdb3770d54ecfdbddcc52c21  0.0s
 => [internal] load build context                                                      0.0s
 => => transferring context: 167B                                                      0.0s
 => CACHED [2/3] WORKDIR /app                                                          0.0s
 => [3/3] COPY . .                                                                     0.0s
 => exporting to image                                                                 0.1s
 => => exporting layers                                                                0.0s
 => => writing image sha256:68994e0269425ff59b8424c2ecbddad0e127617a6a1a4610edd12418a  0.0s
 => => naming to docker.io/tush1809/my-app:latest                                      0.0s
root@kmaster:/home/ubuntu/my_docker_app# docker push tush1809/my-app:latest
The push refers to repository [docker.io/tush1809/my-app]
51620b0f3c39: Pushed
bdd53e6eca70: Pushed
f6dc80d9d167: Mounted from library/python
3ba4af0751c6: Mounted from library/python
d379451f91b6: Mounted from library/python
7cc7fe68eff6: Mounted from library/python
latest: digest: sha256:39cf3210b33aeb44424f9dc829565a00492b5586c747a7a795397371272dd8e0 size: 1572
root@kmaster:/home/ubuntu/my_docker_app#
