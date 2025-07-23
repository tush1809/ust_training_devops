
ubuntu@kworker1:~$ sudo reboot
Connection to 3.91.207.170 closed by remote host.
Connection to 3.91.207.170 closed.
tush@Tushar:~$ ssh -i tusharnv.pem ubuntu@3.84.249.143
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1036-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Jul 23 09:24:06 UTC 2025

  System load:  1.05               Processes:             132
  Usage of /:   18.6% of 28.89GB   Users logged in:       0
  Memory usage: 7%                 IPv4 address for eth0: 172.31.95.113
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


Last login: Wed Jul 23 09:18:03 2025 from 152.59.120.115
ubuntu@kmaster:~$ hostname
kmaster
ubuntu@kmaster:~$ sudo kubeadm init
I0723 09:25:08.221149    1509 version.go:256] remote version is much newer: v1.33.3; falling back to: stable-1.26
[init] Using Kubernetes version: v1.26.15
[preflight] Running pre-flight checks
error execution phase preflight: [preflight] Some fatal errors occurred:
        [ERROR Port-6443]: Port 6443 is in use
        [ERROR Port-10259]: Port 10259 is in use
        [ERROR Port-10257]: Port 10257 is in use
        [ERROR FileAvailable--etc-kubernetes-manifests-kube-apiserver.yaml]: /etc/kubernetes/manifests/kube-apiserver.yaml already exists
        [ERROR FileAvailable--etc-kubernetes-manifests-kube-controller-manager.yaml]: /etc/kubernetes/manifests/kube-controller-manager.yaml already exists
        [ERROR FileAvailable--etc-kubernetes-manifests-kube-scheduler.yaml]: /etc/kubernetes/manifests/kube-scheduler.yaml already exists
        [ERROR FileAvailable--etc-kubernetes-manifests-etcd.yaml]: /etc/kubernetes/manifests/etcd.yaml already exists
        [ERROR Port-10250]: Port 10250 is in use
        [ERROR Port-2379]: Port 2379 is in use
        [ERROR Port-2380]: Port 2380 is in use
        [ERROR DirAvailable--var-lib-etcd]: /var/lib/etcd is not empty
[preflight] If you know what you are doing, you can make a check non-fatal with `--ignore-preflight-errors=...`
To see the stack trace of this error execute with --v=5 or higher
ubuntu@kmaster:~$s
ubuntu@kmaster:~$ sudo kubeadm reset -f
[reset] Reading configuration from the cluster...
[reset] FYI: You can look at this config file with 'kubectl -n kube-system get cm kubeadm-config -o yaml'
[preflight] Running pre-flight checks
[reset] Deleted contents of the etcd data directory: /var/lib/etcd
[reset] Stopping the kubelet service
[reset] Unmounting mounted directories in "/var/lib/kubelet"
[reset] Deleting contents of directories: [/etc/kubernetes/manifests /var/lib/kubelet /etc/kubernetes/pki]
[reset] Deleting files: [/etc/kubernetes/admin.conf /etc/kubernetes/kubelet.conf /etc/kubernetes/bootstrap-kubelet.conf /etc/kubernetes/controller-manager.conf /etc/kubernetes/scheduler.conf]

The reset process does not clean CNI configuration. To do so, you must remove /etc/cni/net.d

The reset process does not reset or clean up iptables rules or IPVS tables.
If you wish to reset iptables, you must do so manually by using the "iptables" command.

If your cluster was setup to utilize IPVS, run ipvsadm --clear (or similar)
to reset your system's IPVS tables.

The reset process does not clean your kubeconfig files and you must remove them manually.
Please, check the contents of the $HOME/.kube/config file.
ubuntu@kmaster:~$ sudo rm -rf /etc/cni/net.d
ubuntu@kmaster:~$ sudo rm -rf /etc/kubernetes
ubuntu@kmaster:~$ sudo rm -rf /var/lib/etcd
ubuntu@kmaster:~$ rm -rf $HOME/.kube
ubuntu@kmaster:~$ sudo kubeadm init
I0723 09:27:48.502868    1852 version.go:256] remote version is much newer: v1.33.3; falling back to: stable-1.26
[init] Using Kubernetes version: v1.26.15
[preflight] Running pre-flight checks
[preflight] Pulling images required for setting up a Kubernetes cluster
[preflight] This might take a minute or two, depending on the speed of your internet connection
[preflight] You can also perform this action in beforehand using 'kubeadm config images pull'
[certs] Using certificateDir folder "/etc/kubernetes/pki"
[certs] Generating "ca" certificate and key
[certs] Generating "apiserver" certificate and key
[certs] apiserver serving cert is signed for DNS names [kmaster kubernetes kubernetes.default kubernetes.default.svc kubernetes.default.svc.cluster.local] and IPs [10.96.0.1 172.31.95.113]
[certs] Generating "apiserver-kubelet-client" certificate and key
[certs] Generating "front-proxy-ca" certificate and key
[certs] Generating "front-proxy-client" certificate and key
[certs] Generating "etcd/ca" certificate and key
[certs] Generating "etcd/server" certificate and key
[certs] etcd/server serving cert is signed for DNS names [kmaster localhost] and IPs [172.31.95.113 127.0.0.1 ::1]
[certs] Generating "etcd/peer" certificate and key
[certs] etcd/peer serving cert is signed for DNS names [kmaster localhost] and IPs [172.31.95.113 127.0.0.1 ::1]
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
[apiclient] All control plane components are healthy after 7.503367 seconds
[upload-config] Storing the configuration used in ConfigMap "kubeadm-config" in the "kube-system" Namespace
[kubelet] Creating a ConfigMap "kubelet-config" in namespace kube-system with the configuration for the kubelets in the cluster
[upload-certs] Skipping phase. Please see --upload-certs
[mark-control-plane] Marking the node kmaster as control-plane by adding the labels: [node-role.kubernetes.io/control-plane node.kubernetes.io/exclude-from-external-load-balancers]
[mark-control-plane] Marking the node kmaster as control-plane by adding the taints [node-role.kubernetes.io/control-plane:NoSchedule]
[bootstrap-token] Using token: 3onco8.d0shmpbiug5qt1bq
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

kubeadm join 172.31.95.113:6443 --token 3onco8.d0shmpbiug5qt1bq \
        --discovery-token-ca-cert-hash sha256:0e7aaf4ac3bcbba5f01dd4880430a2d47fd518fa8a120d372dc39b9095a4c065
ubuntu@kmaster:~$ mkdir -p $HOME/.kube
ubuntu@kmaster:~$   sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
ubuntu@kmaster:~$   sudo chown $(id -u):$(id -g) $HOME/.kube/config
ubuntu@kmaster:~$
ubuntu@kmaster:~$ client_loop: send disconnect: Broken pipe
tush@Tushar:~$ ssh -i tusharnv.pem ubuntu@3.84.249.143
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1036-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Jul 23 09:39:10 UTC 2025

  System load:  0.0                Processes:             129
  Usage of /:   18.7% of 28.89GB   Users logged in:       1
  Memory usage: 7%                 IPv4 address for eth0: 172.31.95.113
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


Last login: Wed Jul 23 09:24:07 2025 from 152.59.120.115
ubuntu@kmaster:~$ kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
serviceaccount/weave-net created
clusterrole.rbac.authorization.k8s.io/weave-net created
clusterrolebinding.rbac.authorization.k8s.io/weave-net created
role.rbac.authorization.k8s.io/weave-net created
rolebinding.rbac.authorization.k8s.io/weave-net created
daemonset.apps/weave-net created
ubuntu@kmaster:~$ watch -n 1 kubectl get po -n kube-system

ubuntu@kmaster:~$ kubectl get pods -A
NAMESPACE     NAME                              READY   STATUS    RESTARTS        AGE
kube-system   coredns-787d4945fb-dls85          0/1     Pending   0               16m
kube-system   coredns-787d4945fb-js9gz          0/1     Pending   0               16m
kube-system   etcd-kmaster                      1/1     Running   0               16m
kube-system   kube-apiserver-kmaster            1/1     Running   1               16m
kube-system   kube-controller-manager-kmaster   1/1     Running   1               16m
kube-system   kube-proxy-5fz59                  1/1     Running   0               16m
kube-system   kube-proxy-sqqkm                  1/1     Running   0               6m43s
kube-system   kube-scheduler-kmaster            1/1     Running   1               16m
kube-system   weave-net-8vjnp                   2/2     Running   1 (3m57s ago)   4m2s
kube-system   weave-net-cknhf                   2/2     Running   1 (3m56s ago)   4m2s
ubuntu@kmaster:~$ kubectl get nodes
NAME       STATUS     ROLES           AGE     VERSION
kmaster    NotReady   control-plane   16m     v1.26.5
kworker1   NotReady   <none>          7m15s   v1.26.5
ubuntu@kmaster:~$ kubectl describe pod coredns-787d4945fb-dls85 -n kube-system
Name:                 coredns-787d4945fb-dls85
Namespace:            kube-system
Priority:             2000000000
Priority Class Name:  system-cluster-critical
Service Account:      coredns
Node:                 <none>
Labels:               k8s-app=kube-dns
                      pod-template-hash=787d4945fb
Annotations:          <none>
Status:               Pending
IP:
IPs:                  <none>
Controlled By:        ReplicaSet/coredns-787d4945fb
Containers:
  coredns:
    Image:       registry.k8s.io/coredns/coredns:v1.9.3
    Ports:       53/UDP, 53/TCP, 9153/TCP
    Host Ports:  0/UDP, 0/TCP, 0/TCP
    Args:
      -conf
      /etc/coredns/Corefile
    Limits:
      memory:  170Mi
    Requests:
      cpu:        100m
      memory:     70Mi
    Liveness:     http-get http://:8080/health delay=60s timeout=5s period=10s #success=1 #failure=5
    Readiness:    http-get http://:8181/ready delay=0s timeout=1s period=10s #success=1 #failure=3
    Environment:  <none>
    Mounts:
      /etc/coredns from config-volume (ro)
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-r2rkf (ro)
Conditions:
  Type           Status
  PodScheduled   False
Volumes:
  config-volume:
    Type:      ConfigMap (a volume populated by a ConfigMap)
    Name:      coredns
    Optional:  false
  kube-api-access-r2rkf:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   Burstable
Node-Selectors:              kubernetes.io/os=linux
Tolerations:                 CriticalAddonsOnly op=Exists
                             node-role.kubernetes.io/control-plane:NoSchedule
                             node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type     Reason            Age                   From               Message
  ----     ------            ----                  ----               -------
  Warning  FailedScheduling  12m (x2 over 17m)     default-scheduler  0/1 nodes are available: 1 node(s) had untolerated taint {node.kubernetes.io/not-ready: }. preemption: 0/1 nodes are available: 1 Preemption is not helpful for scheduling..
  Warning  FailedScheduling  100s (x2 over 7m10s)  default-scheduler  0/2 nodes are available: 2 node(s) had untolerated taint {node.kubernetes.io/not-ready: }. preemption: 0/2 nodes are available: 2 Preemption is not helpful for scheduling..
ubuntu@kmaster:~$ kubectl get nodes
NAME       STATUS     ROLES           AGE    VERSION
kmaster    NotReady   control-plane   18m    v1.26.5
kworker1   NotReady   <none>          9m5s   v1.26.5
ubuntu@kmaster:~$ kubectl logs -n kube-system -l name=weave-net -c weave
DEBU: 2025/07/23 09:40:12.648809 registering for updates for node delete events
INFO: 2025/07/23 09:40:13.103355 adding entry 10.32.0.0/13 to weaver-no-masq-local of 0
INFO: 2025/07/23 09:40:13.103388 added entry 10.32.0.0/13 to weaver-no-masq-local of 0
INFO: 2025/07/23 09:40:13.104389 adding entry 10.40.0.0/14 to weaver-no-masq-local of 0
INFO: 2025/07/23 09:40:13.104414 added entry 10.40.0.0/14 to weaver-no-masq-local of 0
INFO: 2025/07/23 09:40:13.105203 deleting entry 10.32.0.0/12 from weaver-no-masq-local of 0
INFO: 2025/07/23 09:40:13.105262 deleted entry 10.32.0.0/12 from weaver-no-masq-local of 0
INFO: 2025/07/23 09:40:13.586141 Discovered remote MAC 0e:df:01:45:59:60 at 56:fb:c0:6c:a0:b9(kmaster)
INFO: 2025/07/23 09:40:13.894211 Discovered remote MAC 56:fb:c0:6c:a0:b9 at 56:fb:c0:6c:a0:b9(kmaster)
INFO: 2025/07/23 09:40:14.186604 Discovered remote MAC 56:54:dd:8a:f8:30 at 56:fb:c0:6c:a0:b9(kmaster)
INFO: 2025/07/23 09:40:12.533499 Error checking version: Get "https://checkpoint-api.weave.works/v1/check/weave-net?arch=amd64&flag_docker-version=none&flag_kernel-version=5.15.0-1036-aws&flag_network=fastdp&os=linux&signature=Iq0J6vxJj%2FbHB%2FMqCs0QtuTM72j9bQlDd%2F5Anj14o0I%3D&version=git-34de0b10a69c": dial tcp: lookup checkpoint-api.weave.works on 10.96.0.10:53: write udp 172.31.95.113:40301->10.96.0.10:53: write: operation not permitted
INFO: 2025/07/23 09:40:12.574957 ->[172.31.92.64:6783|36:35:89:72:1c:45(kworker1)]: connection fully established
INFO: 2025/07/23 09:40:12.576766 sleeve ->[172.31.92.64:6783|36:35:89:72:1c:45(kworker1)]: Effective MTU verified at 8939
INFO: 2025/07/23 09:40:13.083798 [kube-peers] Added myself to peer list &{[{36:35:89:72:1c:45 kworker1} {56:fb:c0:6c:a0:b9 kmaster}]}
DEBU: 2025/07/23 09:40:13.091187 [kube-peers] Nodes that have disappeared: map[]
INFO: 2025/07/23 09:40:13.111327 adding entry 10.44.0.0/14 to weaver-no-masq-local of 0
INFO: 2025/07/23 09:40:13.111358 added entry 10.44.0.0/14 to weaver-no-masq-local of 0
10.44.0.0
DEBU: 2025/07/23 09:40:13.185312 registering for updates for node delete events
INFO: 2025/07/23 09:40:13.812891 Discovered remote MAC 36:35:89:72:1c:45 at 36:35:89:72:1c:45(kworker1)
ubuntu@kmaster:~$ sudo modprobe br_netfilter
8s.conf
net.bridge.bridge-nf-call-iptables=1
EOF

sudo sysctl --system

sudo systemctl restart kubelet
ubuntu@kmaster:~$
ubuntu@kmaster:~$ cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
> net.bridge.bridge-nf-call-iptables=1
> EOF
net.bridge.bridge-nf-call-iptables=1
ubuntu@kmaster:~$
ubuntu@kmaster:~$ sudo sysctl --system
* Applying /etc/sysctl.d/10-console-messages.conf ...
kernel.printk = 4 4 1 7
* Applying /etc/sysctl.d/10-ipv6-privacy.conf ...
net.ipv6.conf.all.use_tempaddr = 2
net.ipv6.conf.default.use_tempaddr = 2
* Applying /etc/sysctl.d/10-kernel-hardening.conf ...
kernel.kptr_restrict = 1
* Applying /etc/sysctl.d/10-link-restrictions.conf ...
fs.protected_hardlinks = 1
fs.protected_symlinks = 1
* Applying /etc/sysctl.d/10-magic-sysrq.conf ...
kernel.sysrq = 176
* Applying /etc/sysctl.d/10-network-security.conf ...
net.ipv4.conf.default.rp_filter = 2
net.ipv4.conf.all.rp_filter = 2
* Applying /etc/sysctl.d/10-ptrace.conf ...
kernel.yama.ptrace_scope = 1
* Applying /etc/sysctl.d/10-zeropage.conf ...
vm.mmap_min_addr = 65536
* Applying /usr/lib/sysctl.d/50-default.conf ...
net.ipv4.conf.default.promote_secondaries = 1
sysctl: setting key "net.ipv4.conf.all.promote_secondaries": Invalid argument
net.ipv4.ping_group_range = 0 2147483647
net.core.default_qdisc = fq_codel
fs.protected_regular = 1
fs.protected_fifos = 1
* Applying /usr/lib/sysctl.d/50-pid-max.conf ...
kernel.pid_max = 4194304
* Applying /etc/sysctl.d/99-cloudimg-ipv6.conf ...
net.ipv6.conf.all.use_tempaddr = 0
net.ipv6.conf.default.use_tempaddr = 0
* Applying /etc/sysctl.d/99-sysctl.conf ...
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward = 1
net.ipv6.conf.all.forwarding = 1
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv4.tcp_congestion_control = bbr
vm.overcommit_memory = 1
kernel.panic = 10
kernel.panic_on_oops = 1
fs.inotify.max_user_instances = 8192
fs.inotify.max_user_watches = 524288
net.ipv4.conf.all.rp_filter = 1
* Applying /etc/sysctl.d/k8s.conf ...
net.bridge.bridge-nf-call-iptables = 1
* Applying /usr/lib/sysctl.d/protect-links.conf ...
fs.protected_fifos = 1
fs.protected_hardlinks = 1
fs.protected_regular = 2
fs.protected_symlinks = 1
* Applying /etc/sysctl.conf ...
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward = 1
net.ipv6.conf.all.forwarding = 1
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv4.tcp_congestion_control = bbr
vm.overcommit_memory = 1
kernel.panic = 10
kernel.panic_on_oops = 1
fs.inotify.max_user_instances = 8192
fs.inotify.max_user_watches = 524288
net.ipv4.conf.all.rp_filter = 1
ubuntu@kmaster:~$
ubuntu@kmaster:~$ sudo systemctl restart kubelet
ubuntu@kmaster:~$ kubectl get nodes
NAME       STATUS     ROLES           AGE   VERSION
kmaster    NotReady   control-plane   21m   v1.26.5
kworker1   NotReady   <none>          11m   v1.26.5
ubuntu@kmaster:~$ # Enable bridge network filtering
ubuntu@kmaster:~$ sudo modprobe br_netfilter
ubuntu@kmaster:~$
ubuntu@kmaster:~$ # Set required sysctl config for Kubernetes networking
ubuntu@kmaster:~$ cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
> net.bridge.bridge-nf-call-iptables = 1
> net.ipv4.ip_forward = 1
> net.bridge.bridge-nf-call-ip6tables = 1
> EOF
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-ip6tables = 1
ubuntu@kmaster:~$
ubuntu@kmaster:~$ # Apply it
ubuntu@kmaster:~$ sudo sysctl --system
* Applying /etc/sysctl.d/10-console-messages.conf ...
kernel.printk = 4 4 1 7
* Applying /etc/sysctl.d/10-ipv6-privacy.conf ...
net.ipv6.conf.all.use_tempaddr = 2
net.ipv6.conf.default.use_tempaddr = 2
* Applying /etc/sysctl.d/10-kernel-hardening.conf ...
kernel.kptr_restrict = 1
* Applying /etc/sysctl.d/10-link-restrictions.conf ...
fs.protected_hardlinks = 1
fs.protected_symlinks = 1
* Applying /etc/sysctl.d/10-magic-sysrq.conf ...
kernel.sysrq = 176
* Applying /etc/sysctl.d/10-network-security.conf ...
net.ipv4.conf.default.rp_filter = 2
net.ipv4.conf.all.rp_filter = 2
* Applying /etc/sysctl.d/10-ptrace.conf ...
kernel.yama.ptrace_scope = 1
* Applying /etc/sysctl.d/10-zeropage.conf ...
vm.mmap_min_addr = 65536
* Applying /usr/lib/sysctl.d/50-default.conf ...
net.ipv4.conf.default.promote_secondaries = 1
sysctl: setting key "net.ipv4.conf.all.promote_secondaries": Invalid argument
net.ipv4.ping_group_range = 0 2147483647
net.core.default_qdisc = fq_codel
fs.protected_regular = 1
fs.protected_fifos = 1
* Applying /usr/lib/sysctl.d/50-pid-max.conf ...
kernel.pid_max = 4194304
* Applying /etc/sysctl.d/99-cloudimg-ipv6.conf ...
net.ipv6.conf.all.use_tempaddr = 0
net.ipv6.conf.default.use_tempaddr = 0
* Applying /etc/sysctl.d/99-sysctl.conf ...
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward = 1
net.ipv6.conf.all.forwarding = 1
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv4.tcp_congestion_control = bbr
vm.overcommit_memory = 1
kernel.panic = 10
kernel.panic_on_oops = 1
fs.inotify.max_user_instances = 8192
fs.inotify.max_user_watches = 524288
net.ipv4.conf.all.rp_filter = 1
* Applying /etc/sysctl.d/k8s.conf ...
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-ip6tables = 1
* Applying /usr/lib/sysctl.d/protect-links.conf ...
fs.protected_fifos = 1
fs.protected_hardlinks = 1
fs.protected_regular = 2
fs.protected_symlinks = 1
* Applying /etc/sysctl.conf ...
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward = 1
net.ipv6.conf.all.forwarding = 1
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv4.tcp_congestion_control = bbr
vm.overcommit_memory = 1
kernel.panic = 10
kernel.panic_on_oops = 1
fs.inotify.max_user_instances = 8192
fs.inotify.max_user_watches = 524288
net.ipv4.conf.all.rp_filter = 1
ubuntu@kmaster:~$ sudo systemctl restart kubelet
ubuntu@kmaster:~$ sudo journalctl -u kubelet | tail -n 30
Jul 23 09:50:46 kmaster kubelet[4780]: I0723 09:50:46.584285    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"kubeconfig\" (UniqueName: \"kubernetes.io/host-path/8c7decace9b89ab6fe64cae566bf6105-kubeconfig\") pod \"kube-controller-manager-kmaster\" (UID: \"8c7decace9b89ab6fe64cae566bf6105\") " pod="kube-system/kube-controller-manager-kmaster"
Jul 23 09:50:46 kmaster kubelet[4780]: I0723 09:50:46.584315    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"etc-ca-certificates\" (UniqueName: \"kubernetes.io/host-path/49c5d1379d817b1fafce46d4b367b4c6-etc-ca-certificates\") pod \"kube-apiserver-kmaster\" (UID: \"49c5d1379d817b1fafce46d4b367b4c6\") " pod="kube-system/kube-apiserver-kmaster"
Jul 23 09:50:46 kmaster kubelet[4780]: I0723 09:50:46.584347    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"usr-share-ca-certificates\" (UniqueName: \"kubernetes.io/host-path/49c5d1379d817b1fafce46d4b367b4c6-usr-share-ca-certificates\") pod \"kube-apiserver-kmaster\" (UID: \"49c5d1379d817b1fafce46d4b367b4c6\") " pod="kube-system/kube-apiserver-kmaster"
Jul 23 09:50:46 kmaster kubelet[4780]: I0723 09:50:46.584378    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"usr-share-ca-certificates\" (UniqueName: \"kubernetes.io/host-path/8c7decace9b89ab6fe64cae566bf6105-usr-share-ca-certificates\") pod \"kube-controller-manager-kmaster\" (UID: \"8c7decace9b89ab6fe64cae566bf6105\") " pod="kube-system/kube-controller-manager-kmaster"
Jul 23 09:50:46 kmaster kubelet[4780]: E0723 09:50:46.769368    4780 kubelet.go:1802] "Failed creating a mirror pod for" err="pods \"kube-controller-manager-kmaster\" already exists" pod="kube-system/kube-controller-manager-kmaster"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.161677    4780 apiserver.go:52] "Watching apiserver"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.363655    4780 topology_manager.go:210] "Topology Admit Handler"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.363971    4780 topology_manager.go:210] "Topology Admit Handler"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.382437    4780 desired_state_of_world_populator.go:159] "Finished populating initial desired state of world"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391225    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"xtables-lock\" (UniqueName: \"kubernetes.io/host-path/6d48a205-494b-438c-9e7d-2900aeb056c7-xtables-lock\") pod \"weave-net-cknhf\" (UID: \"6d48a205-494b-438c-9e7d-2900aeb056c7\") " pod="kube-system/weave-net-cknhf"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391281    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"kube-api-access-vmxh8\" (UniqueName: \"kubernetes.io/projected/313ae17c-3eb4-4de7-ae31-d4acdf077330-kube-api-access-vmxh8\") pod \"kube-proxy-5fz59\" (UID: \"313ae17c-3eb4-4de7-ae31-d4acdf077330\") " pod="kube-system/kube-proxy-5fz59"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391316    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"weavedb\" (UniqueName: \"kubernetes.io/host-path/6d48a205-494b-438c-9e7d-2900aeb056c7-weavedb\") pod \"weave-net-cknhf\" (UID: \"6d48a205-494b-438c-9e7d-2900aeb056c7\") " pod="kube-system/weave-net-cknhf"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391346    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"cni-bin\" (UniqueName: \"kubernetes.io/host-path/6d48a205-494b-438c-9e7d-2900aeb056c7-cni-bin\") pod \"weave-net-cknhf\" (UID: \"6d48a205-494b-438c-9e7d-2900aeb056c7\") " pod="kube-system/weave-net-cknhf"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391379    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"cni-conf\" (UniqueName: \"kubernetes.io/host-path/6d48a205-494b-438c-9e7d-2900aeb056c7-cni-conf\") pod \"weave-net-cknhf\" (UID: \"6d48a205-494b-438c-9e7d-2900aeb056c7\") " pod="kube-system/weave-net-cknhf"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391408    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"xtables-lock\" (UniqueName: \"kubernetes.io/host-path/313ae17c-3eb4-4de7-ae31-d4acdf077330-xtables-lock\") pod \"kube-proxy-5fz59\" (UID: \"313ae17c-3eb4-4de7-ae31-d4acdf077330\") " pod="kube-system/kube-proxy-5fz59"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391436    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"cni-bin2\" (UniqueName: \"kubernetes.io/host-path/6d48a205-494b-438c-9e7d-2900aeb056c7-cni-bin2\") pod \"weave-net-cknhf\" (UID: \"6d48a205-494b-438c-9e7d-2900aeb056c7\") " pod="kube-system/weave-net-cknhf"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391469    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"cni-machine-id\" (UniqueName: \"kubernetes.io/host-path/6d48a205-494b-438c-9e7d-2900aeb056c7-cni-machine-id\") pod \"weave-net-cknhf\" (UID: \"6d48a205-494b-438c-9e7d-2900aeb056c7\") " pod="kube-system/weave-net-cknhf"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391497    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"kube-proxy\" (UniqueName: \"kubernetes.io/configmap/313ae17c-3eb4-4de7-ae31-d4acdf077330-kube-proxy\") pod \"kube-proxy-5fz59\" (UID: \"313ae17c-3eb4-4de7-ae31-d4acdf077330\") " pod="kube-system/kube-proxy-5fz59"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391525    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"lib-modules\" (UniqueName: \"kubernetes.io/host-path/6d48a205-494b-438c-9e7d-2900aeb056c7-lib-modules\") pod \"weave-net-cknhf\" (UID: \"6d48a205-494b-438c-9e7d-2900aeb056c7\") " pod="kube-system/weave-net-cknhf"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391552    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"kube-api-access-nbb72\" (UniqueName: \"kubernetes.io/projected/6d48a205-494b-438c-9e7d-2900aeb056c7-kube-api-access-nbb72\") pod \"weave-net-cknhf\" (UID: \"6d48a205-494b-438c-9e7d-2900aeb056c7\") " pod="kube-system/weave-net-cknhf"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391578    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"lib-modules\" (UniqueName: \"kubernetes.io/host-path/313ae17c-3eb4-4de7-ae31-d4acdf077330-lib-modules\") pod \"kube-proxy-5fz59\" (UID: \"313ae17c-3eb4-4de7-ae31-d4acdf077330\") " pod="kube-system/kube-proxy-5fz59"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391604    4780 reconciler_common.go:253] "operationExecutor.VerifyControllerAttachedVolume started for volume \"dbus\" (UniqueName: \"kubernetes.io/host-path/6d48a205-494b-438c-9e7d-2900aeb056c7-dbus\") pod \"weave-net-cknhf\" (UID: \"6d48a205-494b-438c-9e7d-2900aeb056c7\") " pod="kube-system/weave-net-cknhf"
Jul 23 09:50:47 kmaster kubelet[4780]: I0723 09:50:47.391619    4780 reconciler.go:41] "Reconciler: start to sync state"
Jul 23 09:50:47 kmaster kubelet[4780]: E0723 09:50:47.769101    4780 kubelet.go:1802] "Failed creating a mirror pod for" err="pods \"kube-apiserver-kmaster\" already exists" pod="kube-system/kube-apiserver-kmaster"
Jul 23 09:50:47 kmaster kubelet[4780]: E0723 09:50:47.968563    4780 kubelet.go:1802] "Failed creating a mirror pod for" err="pods \"kube-controller-manager-kmaster\" already exists" pod="kube-system/kube-controller-manager-kmaster"
Jul 23 09:50:48 kmaster kubelet[4780]: E0723 09:50:48.168676    4780 kubelet.go:1802] "Failed creating a mirror pod for" err="pods \"etcd-kmaster\" already exists" pod="kube-system/etcd-kmaster"
Jul 23 09:50:48 kmaster kubelet[4780]: I0723 09:50:48.361699    4780 request.go:690] Waited for 1.089871166s due to client-side throttling, not priority and fairness, request: POST:https://172.31.95.113:6443/api/v1/namespaces/kube-system/pods
Jul 23 09:50:48 kmaster kubelet[4780]: E0723 09:50:48.367123    4780 kubelet.go:1802] "Failed creating a mirror pod for" err="pods \"kube-scheduler-kmaster\" already exists" pod="kube-system/kube-scheduler-kmaster"
Jul 23 09:50:48 kmaster kubelet[4780]: E0723 09:50:48.493466    4780 configmap.go:199] Couldn't get configMap kube-system/kube-proxy: failed to sync configmap cache: timed out waiting for the condition
Jul 23 09:50:48 kmaster kubelet[4780]: E0723 09:50:48.493570    4780 nestedpendingoperations.go:348] Operation for "{volumeName:kubernetes.io/configmap/313ae17c-3eb4-4de7-ae31-d4acdf077330-kube-proxy podName:313ae17c-3eb4-4de7-ae31-d4acdf077330 nodeName:}" failed. No retries permitted until 2025-07-23 09:50:48.993543555 +0000 UTC m=+2.927163158 (durationBeforeRetry 500ms). Error: MountVolume.SetUp failed for volume "kube-proxy" (UniqueName: "kubernetes.io/configmap/313ae17c-3eb4-4de7-ae31-d4acdf077330-kube-proxy") pod "kube-proxy-5fz59" (UID: "313ae17c-3eb4-4de7-ae31-d4acdf077330") : failed to sync configmap cache: timed out waiting for the condition
ubuntu@kmaster:~$ kubectl delete -f https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')
WARNING: This version information is deprecated and will be replaced with the output from kubectl version --short.  Use --output=yaml|json to get the full version.
Unable to connect to the server: dial tcp: lookup cloud.weave.works on 127.0.0.53:53: server misbehaving
ubuntu@kmaster:~$ sudo rm /etc/resolv.conf
tc/resolv.conf
ubuntu@kmaster:~$ echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
nameserver 8.8.8.8
ubuntu@kmaster:~$ ping google.com
PING google.com (192.178.218.139) 56(84) bytes of data.
64 bytes from yuiadtq-in-f139.1e100.net (192.178.218.139): icmp_seq=1 ttl=106 time=1.43 ms
ud.weave.works
64 bytes from yuiadtq-in-f139.1e100.net (192.178.218.139): icmp_seq=2 ttl=106 time=1.47 ms
64 bytes from yuiadtq-in-f139.1e100.net (192.178.218.139): icmp_seq=3 ttl=106 time=1.47 ms
64 bytes from yuiadtq-in-f139.1e100.net (192.178.218.139): icmp_seq=4 ttl=106 time=1.47 ms
64 bytes from yuiadtq-in-f139.1e100.net (192.178.218.139): icmp_seq=5 ttl=106 time=1.45 ms
64 bytes from yuiadtq-in-f139.1e100.net (192.178.218.139): icmp_seq=6 ttl=106 time=1.48 ms
64 bytes from yuiadtq-in-f139.1e100.net (192.178.218.139): icmp_seq=7 ttl=106 time=1.46 ms
64 bytes from yuiadtq-in-f139.1e100.net (192.178.218.139): icmp_seq=8 ttl=106 time=1.46 ms
64 bytes from yuiadtq-in-f139.1e100.net (192.178.218.139): icmp_seq=9 ttl=106 time=1.47 ms
^C
--- google.com ping statistics ---
9 packets transmitted, 9 received, 0% packet loss, time 8010ms
rtt min/avg/max/mdev = 1.429/1.461/1.477/0.013 ms
ubuntu@kmaster:~$ kubectl delete -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
WARNING: This version information is deprecated and will be replaced with the output from kubectl version --short.  Use --output=yaml|json to get the full version.
Unable to connect to the server: dial tcp: lookup cloud.weave.works on 8.8.8.8:53: server misbehaving
ubuntu@kmaster:~$ dig cloud.weave.works @8.8.8.8

; <<>> DiG 9.16.1-Ubuntu <<>> cloud.weave.works @8.8.8.8
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: SERVFAIL, id: 38969
;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 512
; OPT=15: 00 17 5b 31 37 32 2e 36 34 2e 33 32 2e 32 34 37 5d 20 72 63 6f 64 65 3d 52 45 46 55 53 45 44 20 66 6f 72 20 63 6c 6f 75 64 2e 77 65 61 76 65 2e 77 6f 72 6b 73 2f 61 ("..[172.64.32.247] rcode=REFUSED for cloud.weave.works/a")
; OPT=15: 00 17 5b 31 30 38 2e 31 36 32 2e 31 39 32 2e 32 34 37 5d 20 72 63 6f 64 65 3d 52 45 46 55 53 45 44 20 66 6f 72 20 63 6c 6f 75 64 2e 77 65 61 76 65 2e 77 6f 72 6b 73 2f 61 ("..[108.162.192.247] rcode=REFUSED for cloud.weave.works/a")
; OPT=15: 00 17 5b 31 37 33 2e 32 34 35 2e 35 38 2e 32 34 37 5d 20 72 63 6f 64 65 3d 52 45 46 55 53 45 44 20 66 6f 72 20 63 6c 6f 75 64 2e 77 65 61 76 65 2e 77 6f 72 6b 73 2f 61 ("..[173.245.58.247] rcode=REFUSED for cloud.weave.works/a")
; OPT=15: 00 17 5b 31 37 33 2e 32 34 35 2e 35 39 2e 32 33 35 5d 20 72 63 6f 64 65 3d 52 45 46 55 53 45 44 20 66 6f 72 20 63 6c 6f 75 64 2e 77 65 61 76 65 2e 77 6f 72 6b 73 2f 61 ("..[173.245.59.235] rcode=REFUSED for cloud.weave.works/a")
; OPT=15: 00 17 5b 31 30 38 2e 31 36 32 2e 31 39 33 2e 32 33 35 5d 20 72 63 6f 64 65 3d 52 45 46 55 53 45 44 20 66 6f 72 20 63 6c 6f 75 64 2e 77 65 61 76 65 2e 77 6f 72 6b 73 2f 61 ("..[108.162.193.235] rcode=REFUSED for cloud.weave.works/a")
; OPT=15: 00 17 5b 31 37 32 2e 36 34 2e 33 33 2e 32 33 35 5d 20 72 63 6f 64 65 3d 52 45 46 55 53 45 44 20 66 6f 72 20 63 6c 6f 75 64 2e 77 65 61 76 65 2e 77 6f 72 6b 73 2f 61 ("..[172.64.33.235] rcode=REFUSED for cloud.weave.works/a")
; OPT=15: 00 16 41 74 20 64 65 6c 65 67 61 74 69 6f 6e 20 77 65 61 76 65 2e 77 6f 72 6b 73 20 66 6f 72 20 63 6c 6f 75 64 2e 77 65 61 76 65 2e 77 6f 72 6b 73 2f 61 ("..At delegation weave.works for cloud.weave.works/a")
;; QUESTION SECTION:
;cloud.weave.works.             IN      A

;; Query time: 23 msec
;; SERVER: 8.8.8.8#53(8.8.8.8)
;; WHEN: Wed Jul 23 09:54:54 UTC 2025
;; MSG SIZE  rcvd: 461

ubuntu@kmaster:~$ sudo apt update && sudo apt install -y dnsutils
Hit:1 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal InRelease
Get:2 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-updates InRelease [128 kB]
Get:3 http://security.ubuntu.com/ubuntu focal-security InRelease [128 kB]
Get:4 http://us-east-1.ec2.archive.ubuntu.com/ubuntu focal-backports InRelease [128 kB]
Get:6 https://download.docker.com/linux/ubuntu focal InRelease [57.7 kB]
Get:5 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.26/deb  InRelease [1192 B]
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
Get:19 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [3564 kB]
Get:20 https://download.docker.com/linux/ubuntu focal/stable amd64 Packages [59.9 kB]
Get:21 http://security.ubuntu.com/ubuntu focal-security/main Translation-en [518 kB]
Get:22 http://security.ubuntu.com/ubuntu focal-security/main amd64 c-n-f Metadata [14.4 kB]
Get:23 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [3768 kB]
Err:5 https://prod-cdn.packages.k8s.io/repositories/isv:/kubernetes:/core:/stable:/v1.26/deb  InRelease
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 234654DA9A296436
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
ubuntu@kmaster:~$ curl -I https://cloud.weave.works
curl: (6) Could not resolve host: cloud.weave.works
ubuntu@kmaster:~$ curl -I https://google.com
HTTP/2 301
location: https://www.google.com/
content-type: text/html; charset=UTF-8
content-security-policy-report-only: object-src 'none';base-uri 'self';script-src 'nonce-5kTz5YIwttGh-USxhnJBPQ' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
date: Wed, 23 Jul 2025 09:55:49 GMT
expires: Fri, 22 Aug 2025 09:55:49 GMT
cache-control: public, max-age=2592000
server: gws
content-length: 220
x-xss-protection: 0
x-frame-options: SAMEORIGIN
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

ubuntu@kmaster:~$ curl -I https://cloud.weave.works
curl: (6) Could not resolve host: cloud.weave.works
ubuntu@kmaster:~$ client_loop: send disconnect: Broken pipe
tush@Tushar:~$ ssh -i tusharnv.pem ubuntu@3.84.249.143
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1036-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Jul 23 10:34:56 UTC 2025

  System load:  0.08               Processes:              142
  Usage of /:   20.1% of 28.89GB   Users logged in:        1
  Memory usage: 9%                 IPv4 address for eth0:  172.31.95.113
  Swap usage:   0%                 IPv4 address for weave: 10.44.0.0

 * Ubuntu Pro delivers the most comprehensive open source security and
   compliance features.

   https://ubuntu.com/aws/pro

Expanded Security Maintenance for Infrastructure is not enabled.

1 update can be applied immediately.
To see these additional updates run: apt list --upgradable

41 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 20.04 at
https://ubuntu.com/20-04

New release '22.04.5 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Wed Jul 23 10:05:56 2025 from 152.59.120.115
ubuntu@kmaster:~$ get pod -o wide

Command 'get' not found, but there are 18 similar ones.

ubuntu@kmaster:~$ kubectl get pod -o wide
No resources found in default namespace.
ubuntu@kmaster:~$ journalctl -u kubelet -n 20
-- Logs begin at Thu 2024-05-09 15:41:55 UTC, end at Wed 2025-07-23 10:36:4>
Jul 23 10:35:11 kmaster kubelet[6240]: E0723 10:35:11.667906    6240 kubele>
Jul 23 10:35:16 kmaster kubelet[6240]: E0723 10:35:16.668897    6240 kubele>
Jul 23 10:35:21 kmaster kubelet[6240]: E0723 10:35:21.669923    6240 kubele>
Jul 23 10:35:26 kmaster kubelet[6240]: E0723 10:35:26.671649    6240 kubele>
Jul 23 10:35:31 kmaster kubelet[6240]: E0723 10:35:31.673077    6240 kubele>
Jul 23 10:35:36 kmaster kubelet[6240]: E0723 10:35:36.674432    6240 kubele>
Jul 23 10:35:41 kmaster kubelet[6240]: E0723 10:35:41.675685    6240 kubele>
Jul 23 10:35:46 kmaster kubelet[6240]: E0723 10:35:46.676712    6240 kubele>
Jul 23 10:35:51 kmaster kubelet[6240]: E0723 10:35:51.678375    6240 kubele>
Jul 23 10:35:56 kmaster kubelet[6240]: E0723 10:35:56.679398    6240 kubele>
Jul 23 10:36:01 kmaster kubelet[6240]: E0723 10:36:01.680456    6240 kubele>
Jul 23 10:36:06 kmaster kubelet[6240]: E0723 10:36:06.681988    6240 kubele>
Jul 23 10:36:11 kmaster kubelet[6240]: E0723 10:36:11.683639    6240 kubele>
Jul 23 10:36:16 kmaster kubelet[6240]: E0723 10:36:16.685007    6240 kubele>
Jul 23 10:36:21 kmaster kubelet[6240]: E0723 10:36:21.686352    6240 kubele>
Jul 23 10:36:26 kmaster kubelet[6240]: E0723 10:36:26.687467    6240 kubele>
Jul 23 10:36:31 kmaster kubelet[6240]: E0723 10:36:31.688710    6240 kubele>
Jul 23 10:36:36 kmaster kubelet[6240]: E0723 10:36:36.689579    6240 kubele>
Jul 23 10:36:41 kmaster kubelet[6240]: E0723 10:36:41.690358    6240 kubele>
Jul 23 10:36:46 kmaster kubelet[6240]: E0723 10:36:46.691756    6240 kubele>
lines 1-21/21 (END)
-- Logs begin at Thu 2024-05-09 15:41:55 UTC, end at Wed 2025-07-23 10:36:46 UTC. --
Jul 23 10:35:11 kmaster kubelet[6240]: E0723 10:35:11.667906    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:35:16 kmaster kubelet[6240]: E0723 10:35:16.668897    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:35:21 kmaster kubelet[6240]: E0723 10:35:21.669923    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:35:26 kmaster kubelet[6240]: E0723 10:35:26.671649    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:35:31 kmaster kubelet[6240]: E0723 10:35:31.673077    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:35:36 kmaster kubelet[6240]: E0723 10:35:36.674432    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:35:41 kmaster kubelet[6240]: E0723 10:35:41.675685    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:35:46 kmaster kubelet[6240]: E0723 10:35:46.676712    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:35:51 kmaster kubelet[6240]: E0723 10:35:51.678375    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:35:56 kmaster kubelet[6240]: E0723 10:35:56.679398    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:36:01 kmaster kubelet[6240]: E0723 10:36:01.680456    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:36:06 kmaster kubelet[6240]: E0723 10:36:06.681988    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:36:11 kmaster kubelet[6240]: E0723 10:36:11.683639    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:36:16 kmaster kubelet[6240]: E0723 10:36:16.685007    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:36:21 kmaster kubelet[6240]: E0723 10:36:21.686352    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:36:26 kmaster kubelet[6240]: E0723 10:36:26.687467    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:36:31 kmaster kubelet[6240]: E0723 10:36:31.688710    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:36:36 kmaster kubelet[6240]: E0723 10:36:36.689579    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:36:41 kmaster kubelet[6240]: E0723 10:36:41.690358    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fals>
Jul 23 10:36:46 kmaster kubelet[6240]: E0723 10:36:46.691756    6240 kubelet.go:2475] "Container runtime network not ready" networkReady="NetworkReady=fal
