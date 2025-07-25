Welcome to Ubuntu 24.04.2 LTS (GNU/Linux 6.6.87.2-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Fri Jul 25 05:37:53 UTC 2025

  System load:  0.0                 Processes:             65
  Usage of /:   0.3% of 1006.85GB   Users logged in:       0
  Memory usage: 11%                 IPv4 address for eth0: 172.19.97.216
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

This message is shown once a day. To disable it please create the
/home/tush/.hushlogin file.
tush@Tushar:~$ sudo service docker restart
[sudo] password for tush:
Failed to restart docker.service: Unit docker.service not found.
tush@Tushar:~$ sudo service docker restart
Failed to restart docker.service: Unit docker.service not found.
tush@Tushar:~$ ssh -i tusharnv.pem ubuntu@54.205.51.25
The authenticity of host '54.205.51.25 (54.205.51.25)' can't be established.
ED25519 key fingerprint is SHA256:Yqtg4HwFA6LpDh2stsSjQLIttQi/63RDNI+tsDV+3hA.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '54.205.51.25' (ED25519) to the list of known hosts.
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1036-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Fri Jul 25 07:33:19 UTC 2025

  System load:  0.31              Processes:             119
  Usage of /:   4.4% of 96.73GB   Users logged in:       0
  Memory usage: 3%                IPv4 address for eth0: 172.31.82.237
  Swap usage:   0%

 * Ubuntu Pro delivers the most comprehensive open source security and
   compliance features.

   https://ubuntu.com/aws/pro

Expanded Security Maintenance for Applications is not enabled.

0 updates can be applied immediately.

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status


The list of available updates is more than a week old.
To check for new updates run: sudo apt update

Last login: Thu May  9 16:16:17 2024 from 103.184.239.192
ubuntu@ip-172-31-82-237:~$ client_loop: send disconnect: Broken pipe
tush@Tushar:~$ ssh -i tusharnv.pem ubuntu@54.205.51.25
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1036-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Fri Jul 25 08:00:04 UTC 2025

  System load:  0.0               Processes:             115
  Usage of /:   4.4% of 96.73GB   Users logged in:       1
  Memory usage: 4%                IPv4 address for eth0: 172.31.82.237
  Swap usage:   0%

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


Last login: Fri Jul 25 07:33:22 2025 from 152.59.86.10
ubuntu@ip-172-31-82-237:~$ hostname
ip-172-31-82-237
ubuntu@ip-172-31-82-237:~$ hostnamectl set-hostname kmaster
==== AUTHENTICATING FOR org.freedesktop.hostname1.set-static-hostname ===
Authentication is required to set the statically configured local host name, as well as the pretty host name.
Authenticating as: Ubuntu (ubuntu)
Password:
polkit-agent-helper-1: pam_authenticate failed: Authentication failure
==== AUTHENTICATION FAILED ===
Could not set property: Access denied
ubuntu@ip-172-31-82-237:~$ sudo hostnamectl set-hostname kmaster
ubuntu@ip-172-31-82-237:~$ hostname
kmaster
ubuntu@ip-172-31-82-237:~$ logout
Connection to 54.205.51.25 closed.
tush@Tushar:~$ ssh -i tusharnv.pem ubuntu@54.205.51.25
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1036-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Fri Jul 25 08:01:35 UTC 2025

  System load:  0.03              Processes:             116
  Usage of /:   4.4% of 96.73GB   Users logged in:       1
  Memory usage: 4%                IPv4 address for eth0: 172.31.82.237
  Swap usage:   0%

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


Last login: Fri Jul 25 08:00:05 2025 from 152.59.87.155
ubuntu@kmaster:~$ kubeadm init
I0725 08:01:53.162787    3990 version.go:256] remote version is much newer: v1.33.3; falling back to: stable-1.26
[init] Using Kubernetes version: v1.26.15
[preflight] Running pre-flight checks
error execution phase preflight: [preflight] Some fatal errors occurred:
        [ERROR IsPrivilegedUser]: user is not running as root
[preflight] If you know what you are doing, you can make a check non-fatal with `--ignore-preflight-errors=...`
To see the stack trace of this error execute with --v=5 or higher
ubuntu@kmaster:~$ sudo su
root@kmaster:/home/ubuntu# kubeadm init
I0725 08:04:00.169636    4086 version.go:256] remote version is much newer: v1.33.3; falling back to: stable-1.26
[init] Using Kubernetes version: v1.26.15
[preflight] Running pre-flight checks
[preflight] Pulling images required for setting up a Kubernetes cluster
[preflight] This might take a minute or two, depending on the speed of your internet connection
[preflight] You can also perform this action in beforehand using 'kubeadm config images pull'
[certs] Using certificateDir folder "/etc/kubernetes/pki"
[certs] Generating "ca" certificate and key
[certs] Generating "apiserver" certificate and key
[certs] apiserver serving cert is signed for DNS names [kmaster kubernetes kubernetes.default kubernetes.default.svc kubernetes.default.svc.cluster.local] and IPs [10.96.0.1 172.31.82.237]
[certs] Generating "apiserver-kubelet-client" certificate and key
[certs] Generating "front-proxy-ca" certificate and key
[certs] Generating "front-proxy-client" certificate and key
[certs] Generating "etcd/ca" certificate and key
[certs] Generating "etcd/server" certificate and key
[certs] etcd/server serving cert is signed for DNS names [kmaster localhost] and IPs [172.31.82.237 127.0.0.1 ::1]
[certs] Generating "etcd/peer" certificate and key
[certs] etcd/peer serving cert is signed for DNS names [kmaster localhost] and IPs [172.31.82.237 127.0.0.1 ::1]
[certs] Generating "etcd/healthcheck-client" certificate and key
[certs] Generating "apiserver-etcd-client" certificate and key
[certs] Generating "sa" key and public key
[kubeconfig] Using kubeconfig folder "/etc/kubernetes"
[kubeconfig] Writing "admin.conf" kubeconfig file
[kubeconfig] Writing "kubelet.conf" kubeconfig file
[kubeconfig] Writing "controller-manager.conf" kubeconfig file
[kubeconfig] Writing "scheduler.conf" kubeconfig file
[kubelet-start] Writing kubelet environment file with flags to file "/var/lib/kubelet/kubeadm-flags.env"
[kubelet-start] Writing kubelet configuration to file "/var/lib/kubelet/config.yaml"
[kubelet-start] Starting the kubelet
[control-plane] Using manifest folder "/etc/kubernetes/manifests"
[control-plane] Creating static Pod manifest for "kube-apiserver"
[control-plane] Creating static Pod manifest for "kube-controller-manager"
[control-plane] Creating static Pod manifest for "kube-scheduler"
[etcd] Creating static Pod manifest for local etcd in "/etc/kubernetes/manifests"
[wait-control-plane] Waiting for the kubelet to boot up the control plane as static Pods from directory "/etc/kubernetes/manifests". This can take up to 4m0s
[apiclient] All control plane components are healthy after 12.502286 seconds
[upload-config] Storing the configuration used in ConfigMap "kubeadm-config" in the "kube-system" Namespace
[kubelet] Creating a ConfigMap "kubelet-config" in namespace kube-system with the configuration for the kubelets in the cluster
[upload-certs] Skipping phase. Please see --upload-certs
[mark-control-plane] Marking the node kmaster as control-plane by adding the labels: [node-role.kubernetes.io/control-plane node.kubernetes.io/exclude-from-external-load-balancers]
[mark-control-plane] Marking the node kmaster as control-plane by adding the taints [node-role.kubernetes.io/control-plane:NoSchedule]
[bootstrap-token] Using token: w5y9fv.shgutmv4v1whay7h
[bootstrap-token] Configuring bootstrap tokens, cluster-info ConfigMap, RBAC Roles
[bootstrap-token] Configured RBAC rules to allow Node Bootstrap tokens to get nodes
[bootstrap-token] Configured RBAC rules to allow Node Bootstrap tokens to post CSRs in order for nodes to get long term certificate credentials
[bootstrap-token] Configured RBAC rules to allow the csrapprover controller automatically approve CSRs from a Node Bootstrap Token
[bootstrap-token] Configured RBAC rules to allow certificate rotation for all node client certificates in the cluster
[bootstrap-token] Creating the "cluster-info" ConfigMap in the "kube-public" namespace
[kubelet-finalize] Updating "/etc/kubernetes/kubelet.conf" to point to a rotatable kubelet client certificate and key
[addons] Applied essential addon: CoreDNS
[addons] Applied essential addon: kube-proxy

Your Kubernetes control-plane has initialized successfully!

To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

Alternatively, if you are the root user, you can run:

  export KUBECONFIG=/etc/kubernetes/admin.conf

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join 172.31.82.237:6443 --token w5y9fv.shgutmv4v1whay7h \
        --discovery-token-ca-cert-hash sha256:0416ad37b0abbc003649bb4936821b9634dd5543a6598fd8359100bdd1a06269
root@kmaster:/home/ubuntu#  mkdir -p $HOME/.kube
root@kmaster:/home/ubuntu#   sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
$HOME/.kube/configroot@kmaster:/home/ubuntu#   sudo chown $(id -u):$(id -g)g
root@kmaster:/home/ubuntu# kubectl get nodes
NAME      STATUS     ROLES           AGE     VERSION
kmaster   NotReady   control-plane   3m11s   v1.26.5
root@kmaster:/home/ubuntu#
root@kmaster:/home/ubuntu# kubeadm join 172.31.82.237:6443 --token w5y9fv.shgutmv4v1whay7h \
>         --discovery-token-ca-cert-hash sha256:0416ad37b0abbc003649bb4936821b9634dd5543a6598fd8359100bdd1a06269
[preflight] Running pre-flight checks
error execution phase preflight: [preflight] Some fatal errors occurred:
        [ERROR FileAvailable--etc-kubernetes-kubelet.conf]: /etc/kubernetes/kubelet.conf already exists
        [ERROR Port-10250]: Port 10250 is in use
        [ERROR FileAvailable--etc-kubernetes-pki-ca.crt]: /etc/kubernetes/pki/ca.crt already exists
[preflight] If you know what you are doing, you can make a check non-fatal with `--ignore-preflight-errors=...`
To see the stack trace of this error execute with --v=5 or higher
root@kmaster:/home/ubuntu# kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
serviceaccount/weave-net created
clusterrole.rbac.authorization.k8s.io/weave-net created
clusterrolebinding.rbac.authorization.k8s.io/weave-net created
role.rbac.authorization.k8s.io/weave-net created
rolebinding.rbac.authorization.k8s.io/weave-net created
daemonset.apps/weave-net created
root@kmaster:/home/ubuntu# kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
serviceaccount/weave-net unchanged
clusterrole.rbac.authorization.k8s.io/weave-net unchanged
clusterrolebinding.rbac.authorization.k8s.io/weave-net unchanged
role.rbac.authorization.k8s.io/weave-net unchanged
rolebinding.rbac.authorization.k8s.io/weave-net unchanged
daemonset.apps/weave-net configured
root@kmaster:/home/ubuntu# watch -n 1 kubectl get po -n kube-system
root@kmaster:/home/ubuntu# kubectl describe node | grep -i taint
Taints:             node-role.kubernetes.io/control-plane:NoSchedule
root@kmaster:/home/ubuntu# kubectl run volaspod --image=nginx
pod/volaspod created
root@kmaster:/home/ubuntu# kubectl get pod
NAME       READY   STATUS    RESTARTS   AGE
volaspod   0/1     Pending   0          15s
root@kmaster:/home/ubuntu# kubectl get pod
NAME       READY   STATUS    RESTARTS   AGE
volaspod   0/1     Pending   0          51s
root@kmaster:/home/ubuntu# kubectl run volaspod --image=nginx
Error from server (AlreadyExists): pods "volaspod" already exists
root@kmaster:/home/ubuntu# kubectl run vilaspod --image=nginx
pod/vilaspod created
root@kmaster:/home/ubuntu# kubectl get pod
NAME       READY   STATUS    RESTARTS   AGE
vilaspod   0/1     Pending   0          10s
volaspod   0/1     Pending   0          2m18s
root@kmaster:/home/ubuntu# kubectl get nodes
NAME      STATUS   ROLES           AGE   VERSION
kmaster   Ready    control-plane   16m   v1.26.5
root@kmaster:/home/ubuntu# kubectl describe pod vilaspod
Name:             vilaspod
Namespace:        default
Priority:         0
Service Account:  default
Node:             <none>
Labels:           run=vilaspod
Annotations:      <none>
Status:           Pending
IP:
IPs:              <none>
Containers:
  vilaspod:
    Image:        nginx
    Port:         <none>
    Host Port:    <none>
    Environment:  <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-zjkqv (ro)
Conditions:
  Type           Status
  PodScheduled   False
Volumes:
  kube-api-access-zjkqv:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type     Reason            Age    From               Message
  ----     ------            ----   ----               -------
  Warning  FailedScheduling  2m33s  default-scheduler  0/1 nodes are available: 1 node(s) had untolerated taint {node-role.kubernetes.io/control-plane: }. preemption: 0/1 nodes are available: 1 Preemption is not helpful for scheduling..
root@kmaster:/home/ubuntu# kubectl taint nodes kmaster node-role.kubernetes.io/control-plane- --allow-missing=true
error: unknown flag: --allow-missing
See 'kubectl taint --help' for usage.
root@kmaster:/home/ubuntu# kubectl delete pod vilaspod
pod "vilaspod" deleted
root@kmaster:/home/ubuntu# kubectl run vilaspod --image=nginx
pod/vilaspod created
root@kmaster:/home/ubuntu# kubectl get pods -o wide
NAME       READY   STATUS    RESTARTS   AGE     IP       NODE     NOMINATED NODE   READINESS GATES
vilaspod   0/1     Pending   0          7s      <none>   <none>   <none>           <none>
volaspod   0/1     Pending   0          6m59s   <none>   <none>   <none>           <none>
root@kmaster:/home/ubuntu# kubectl delete pod volaspod
pod "volaspod" deleted
root@kmaster:/home/ubuntu# kubectl get pods -o wide
NAME       READY   STATUS    RESTARTS   AGE   IP       NODE     NOMINATED NODE   READINESS GATES
vilaspod   0/1     Pending   0          53s   <none>   <none>   <none>           <none>
root@kmaster:/home/ubuntu# kubectl get nodes
NAME      STATUS   ROLES           AGE   VERSION
kmaster   Ready    control-plane   20m   v1.26.5
root@kmaster:/home/ubuntu# kubectl taint nodes kmaster node-role.kubernetes.io/control-plane- --allow-missing=true
error: unknown flag: --allow-missing
See 'kubectl taint --help' for usage.
root@kmaster:/home/ubuntu# kubectl get nodes
NAME      STATUS   ROLES           AGE   VERSION
kmaster   Ready    control-plane   20m   v1.26.5
root@kmaster:/home/ubuntu# kubectl delete pod vilaspod
pod "vilaspod" deleted
root@kmaster:/home/ubuntu# kubectl run vilaspod --image=nginx
pod/vilaspod created
root@kmaster:/home/ubuntu# kubectl get pods -o wide
NAME       READY   STATUS    RESTARTS   AGE   IP       NODE     NOMINATED NODE   READINESS GATES
vilaspod   0/1     Pending   0          0s    <none>   <none>   <none>           <none>
root@kmaster:/home/ubuntu# kubectl taint nodes kmaster node-role.kubernetes.io/control-plane-
node/kmaster untainted
root@kmaster:/home/ubuntu# kubectl describe node kmaster | grep Taint
Taints:             <none>
root@kmaster:/home/ubuntu# kubectl delete pod vilaspod
 --image=nginx
kubectl get pods -o wide
pod "vilaspod" deleted
root@kmaster:/home/ubuntu# kubectl run vilaspod --image=nginx
pod/vilaspod created
root@kmaster:/home/ubuntu# kubectl get pods -o wide
NAME       READY   STATUS              RESTARTS   AGE   IP       NODE      NOMINATED NODE   READINESS GATES
vilaspod   0/1     ContainerCreating   0          0s    <none>   kmaster   <none>           <none>
root@kmaster:/home/ubuntu# kubectl run vilaspod --image=nginx
Error from server (AlreadyExists): pods "vilaspod" already exists
root@kmaster:/home/ubuntu# kubectl get pods -o wide
NAME       READY   STATUS    RESTARTS   AGE     IP          NODE      NOMINATED NODE   READINESS GATES
vilaspod   1/1     Running   0          2m57s   10.32.0.4   kmaster   <none>           <none>
root@kmaster:/home/ubuntu# curl 10.32.0.4
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
root@kmaster:/home/ubuntu#
root@kmaster:/home/ubuntu#
