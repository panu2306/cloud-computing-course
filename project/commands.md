## to check the status fo eks cluster - 
```
$ aws eks --region us-west-1 describe-cluster --name cloud-project-cluster --query cluster.status
```

## To configure kubectl to access the kubernetes cluster setup on aws - 
```
$ aws eks --region us-west-1 update-kubeconfig --name cloud-project-cluster
```

## To check the services setup after setting up the cluster - 
```
$ kubectl get services
``` 

## To create a deployment - 
```
$ kubectl apply -f deployment.yaml
```

## To expose the deployment by creating a loadbalancer service - 
```
kubectl expose deployment flask-app-deployment --name=ml-app-service --type=LoadBalancer --port 80 --target-port 9696
```

## To delete the cluster - 


##
