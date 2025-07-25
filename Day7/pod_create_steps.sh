kubeadm init
kubectl get node
	will show the node in "NotReady" status
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
watch -n 1 kubectl get po -n kube-system
	wait until all pods changes to "1/1" or "2/2" "Running"
kubectl describe node | grep -i taint
	copy the taint 
kubectl get node 
	copy the name 
kubectl taint node <node name from above command> node-role.kubernetes.io/control-plane:NoSchedule-
kubectl run nginx --image=nginx
kubectl get po
kubectl get po -o wide
	note the ip 
curl <ip>
	should see nginx output



Problems faced
________________>

taint issues
kubeadm already initalised
resources not starting up

how to solve
______________>

delete taint
make a new pod
start it again
