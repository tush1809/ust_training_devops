     docker build -t first-image :here we are building our first image 
   56  docker build -t first-image .
   57  docker info:	just to get the info
   58  docker run -it ubuntuhere we used -it for interatcive termonal here:	
   59  docker pull nginx  :since there are lots of images on odckerhub we can get pull any image from docker hub it do a simple work by runniing in background and handling the request to that
   60  docker run nginx:simple cammand to run the nginx after getting it from dockerhub
   61  docker image ls:to list all the images running we used this
   62  docker run -p 8080:80 nginx:latest:since we have pulled the image from dokdr hub nw we are running that engine to our local host,we can also change the ports accordingly
   63  history:To list the history of cammands we have used
   64  docker login

Docker image push:->
since it is like github only we can push our images to the dockerhub also so that it can be found easily on that or we can can we accessed remotely.

for that we need to follow certain steps->>
1)login to the dockerhub
2)docker tag local-image:tagname new-repo:tagname
  docker push new-repo:tagname
3)To push a new tag to this repository:
   docker push username/reponame:tagname #we can give tagnames,remove it or can also give version in place of that
