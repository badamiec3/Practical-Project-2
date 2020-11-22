aws eks --region eu-west-1 update-kubeconfig --name project-cluster
aws s3 ls
kubectl get svc
cd kubectl/

kubectl delete -f secrets.yaml 
kubectl delete -f conf-nginx.yaml 
kubectl delete -f backend.yaml 
kubectl delete -f clusterip-backend.yaml 
kubectl delete -f frontend.yaml 
kubectl delete -f clusterip-frontend.yaml 
kubectl delete -f deploy-nginx.yaml 
kubectl delete -f lb-nginx.yaml 

kubectl apply -f secrets.yaml 
kubectl apply -f conf-nginx.yaml 
kubectl apply -f backend.yaml 
kubectl apply -f clusterip-backend.yaml 
kubectl apply -f frontend.yaml 
kubectl apply -f clusterip-frontend.yaml 
kubectl apply -f deploy-nginx.yaml 
kubectl apply -f lb-nginx.yaml 



