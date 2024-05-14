# CICD : EC2, Jenkins,Docker, Helm, Ansible, EKS, Route53
![image](https://github.com/nhungdothi155/cicd-mock-project/assets/77849669/6bfd458e-aa3a-4aab-8148-ed2b14f5ade7)
## Tables Content
* [General Flow](#general-info)
* [Installation Guide](#installation-guide)
* [Troubleshoots and Note](#troubleshoots-and-notes)
* [References](#references)

# General Flow 
# Installation Guilde
> Create EC2 instance ( version ubuntu 22.04)
  ~~~
   Copy content of file initalize.sh then paste it to ec2 for inital installation
  ~~~
> Setup Docker
1. Make sure jenkins is started and set up username and password
  ~~~
   sudo service docker status
  ~~~
  ~~~
   sudo service docker start
  ~~~
  
> Setup Jenkins
1. Make sure jenkins is started and set up username and password
  ~~~
   sudo service jenkins status
  ~~~
  ~~~
   sudo service jenkins start
  ~~~
2. Install plugin in Jenkins , set up credentials
![image](https://github.com/nhungdothi155/CICD-Jenkins-Docker-Ansible-EKS/assets/77849669/e09288a4-5465-4434-be9c-20b39cef96f6)
![image](https://github.com/nhungdothi155/CICD-Jenkins-Docker-Ansible-EKS/assets/77849669/6c3d0459-0e3d-48f3-af32-3cff1552bdb6)
![image](https://github.com/nhungdothi155/CICD-Jenkins-Docker-Ansible-EKS/assets/77849669/cfc9f11d-663d-40b7-9c2a-41ff14e4bf67)
![image](https://github.com/nhungdothi155/CICD-Jenkins-Docker-Ansible-EKS/assets/77849669/dd20a292-4da3-4016-aa2b-731ec266854c)
![image](https://github.com/nhungdothi155/CICD-Jenkins-Docker-Ansible-EKS/assets/77849669/88742d97-3e75-41b2-8415-940b85a8e2eb)

3. Create 2 pipeline , one for dev , one for production
![image](https://github.com/nhungdothi155/CICD-Jenkins-Docker-Ansible-EKS/assets/77849669/3a969cb8-88f6-411b-858b-c76195dcdb05)
![image](https://github.com/nhungdothi155/CICD-Jenkins-Docker-Ansible-EKS/assets/77849669/797229cb-b0fd-4466-bbc3-7492d93f4daf)

> Create two values file in ec2 for using in helm
  ~~~
   vi /home/ubuntu/helm/values/values-dev.yaml
  ~~~
  ~~~
   vi /home/ubuntu/helm/values/values-prod.yaml
  ~~~
> Go to github settings add weekhooks 
![image](https://github.com/nhungdothi155/CICD-Jenkins-Docker-Ansible-EKS/assets/77849669/c9c305d1-acc1-46bd-b306-4cba91521b22)

> Start new commit in main and in dev
![image](https://github.com/nhungdothi155/CICD-Jenkins-Docker-Ansible-EKS/assets/77849669/00d87d35-211a-4f38-9df9-76e1e7363cd8)


> Go to route53 add two defined domain to specific LB that was build by previous commit 
![image](https://github.com/nhungdothi155/CICD-Jenkins-Docker-Ansible-EKS/assets/77849669/4ea55159-97f8-418e-8afa-f3493c9ec306)

# Troubleshoots and Note
1. If you restart jenkins and its slow check this post
   https://www.coachdevops.com/2024/04/fix-for-jenkins-slowness-when-running.html
2. If you lack of memory for creating pod , should create nodegroup in eks with sepcific label and use it in your Pod or Deployment
   https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html
3. If your aws cli is failed when configure check this post
   https://stackoverflow.com/questions/72126048/circleci-message-error-exec-plugin-invalid-apiversion-client-authentication
4. Check all the pod belong to a group
   https://stackoverflow.com/questions/48983354/kubernetes-list-all-pods-and-its-nodes
# References
https://helm.sh/docs/
https://kubernetes.io/docs/home/
https://docs.ansible.com/
https://docs.aws.amazon.com/
