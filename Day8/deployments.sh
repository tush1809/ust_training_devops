ubuntu@kmaster:~$ kubectl get pod
E0725 11:43:43.284538   11820 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
E0725 11:43:43.285091   11820 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
E0725 11:43:43.286778   11820 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
E0725 11:43:43.288417   11820 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
E0725 11:43:43.290048   11820 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
The connection to the server localhost:8080 was refused - did you specify the right host or port?
ubuntu@kmaster:~$ sudo kubectl get pod
NAME       READY   STATUS    RESTARTS   AGE
vilaspod   1/1     Running   0          3h17m
ubuntu@kmaster:~$ https://github.com/vilasvarghese/docker-k8s
-bash: https://github.com/vilasvarghese/docker-k8s: No such file or directory
ubuntu@kmaster:~$ git clone https://github.com/vilasvarghese/docker-k8s
Cloning into 'docker-k8s'...
remote: Enumerating objects: 3831, done.
remote: Counting objects: 100% (147/147), done.
remote: Compressing objects: 100% (51/51), done.
remote: Total 3831 (delta 111), reused 97 (delta 96), pack-reused 3684 (from 4)
Receiving objects: 100% (3831/3831), 154.94 MiB | 38.90 MiB/s, done.
Resolving deltas: 100% (1562/1562), done.
Updating files: 100% (1085/1085), done.
ubuntu@kmaster:~$ cd/docker-k8s/yaml/d
-bash: cd/docker-k8s/yaml/d: No such file or directory
ubuntu@kmaster:~$ cd/docker-k8s/yaml/ddashboard/deployment/
-bash: cd/docker-k8s/yaml/ddashboard/deployment/: No such file or directory
ubuntu@kmaster:~$ cd/docker-k8s/yaml/d /dashboard/deployment/
-bash: cd/docker-k8s/yaml/d: No such file or directory
ubuntu@kmaster:~$ cd docker-k8s/yaml/d
dashboard/  deployment/
ubuntu@kmaster:~$ cd/docker-k8s/yaml/Deployment$ ls
-bash: cd/docker-k8s/yaml/Deployment$: No such file or directory
ubuntu@kmaster:~$ cd/docker-k8s/yaml/d
.Xauthority                .profile
.bash_history              .ssh/
.bash_logout               .sudo_as_admin_successful
.bashrc                    docker-k8s/
.cache/                    snap/
ubuntu@kmaster:~$ cd docker-k8s/yaml/deployment/
ubuntu@kmaster:~/docker-k8s/yaml/deployment$ ls
cpu-mem-pod.yaml              pod-ns.yaml
daemonset.yaml                replica-set.yaml
deploy-ng.yaml                replicaset-in-operator.yaml
deploy-recreate-strategy.yml  replicaset-with-in2.yaml
multi-container-pod.yaml      replication-controller.yaml
namespace.yaml                statefulset.yaml
ng-pod.yaml                   windows-deploy.yml
ubuntu@kmaster:~/docker-k8s/yaml/deployment$ kubectl apply -f deploy-ng.yaml
The connection to the server localhost:8080 was refused - did you specify the right host or port?
ubuntu@kmaster:~/docker-k8s/yaml/deployment$ sudo kubectl apply -f deploy-ng
.yaml
deployment.apps/nginx-deployment created
ubuntu@kmaster:~/docker-k8s/yaml/deployment$ kubectl get deploy,rs,po
E0725 12:00:23.695086   12211 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
E0725 12:00:23.695844   12211 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
E0725 12:00:23.697558   12211 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
E0725 12:00:23.699244   12211 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
E0725 12:00:23.700869   12211 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
E0725 12:00:23.702413   12211 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
E0725 12:00:23.703914   12211 memcache.go:265] couldn't get current server API group list: Get "http://localhost:8080/api?timeout=32s": dial tcp [::1]:8080: connect: connection refused
The connection to the server localhost:8080 was refused - did you specify the right host or port?
ubuntu@kmaster:~/docker-k8s/yaml/deployment$ sudo su
root@kmaster:/home/ubuntu/docker-k8s/yaml/deployment# kubectl get deploy,rs,po
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx-deployment   1/1     1            1           70s

NAME                                        DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-deployment-f5d9744f   1         1         1       70s

NAME                                  READY   STATUS    RESTARTS   AGE
pod/nginx-deployment-f5d9744f-755v7   1/1     Running   0          70s
pod/vilaspod                          1/1     Running   0          3h33m
root@kmaster:/home/ubuntu/docker-k8s/yaml/deployment# kubectl get po --show-labels
NAME                              READY   STATUS    RESTARTS   AGE     LABELS
nginx-deployment-f5d9744f-755v7   1/1     Running   0          2m55s   app=nginx,pod-template-hash=f5d9744f
vilaspod                          1/1     Running   0          3h35m   run=vilaspod
root@kmaster:/home/ubuntu/docker-k8s/yaml/deployment# cd .. /services
bash: cd: too many arguments
root@kmaster:/home/ubuntu/docker-k8s/yaml/deployment# cd ../services
root@kmaster:/home/ubuntu/docker-k8s/yaml/services# ls
cluster-ip.yaml          ingress.yaml        node-port4-tomcat.yaml
dns.yaml                 ingress1.yaml       weave-daemonset-k8s.yaml
dnsInstructions.txt      load-balancer.yaml
dnsInstructions.txt.bak  node-port.yaml
root@kmaster:/home/ubuntu/docker-k8s/yaml/services# cat cluster-ip.yaml
apiVersion: v1
kind: Service
metadata:
  name: my-cluster-ip
  labels:
    app: my-cluster-ip
spec:
  ports:
  - port: 80
    protocol: TCP
  selector:
    app: nginx

#http://my-cluster-ip.svc.cluster.local/catalog/companies/Hexaware/employeesroot@kmaster:/home/ubuntu/docker-k8s/yaml/services# kubectl apply -f cluster-ip.yaml
service/my-cluster-ip created
root@kmaster:/home/ubuntu/docker-k8s/yaml/services# kubectl get svc
NAME            TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
kubernetes      ClusterIP   10.96.0.1       <none>        443/TCP   4h3m
my-cluster-ip   ClusterIP   10.104.109.25   <none>        80/TCP    39s
root@kmaster:/home/ubuntu/docker-k8s/yaml/services# curl 10.104.109.25
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
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
root@kmaster:/home/ubuntu/docker-k8s/yaml/services#
