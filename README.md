# fullcycle-k8s
    kind create cluster (docker)
    kubectl cluster-info --context kind-kind 
    kubectl get nodes
    kind get clusters
    kind delete clusters kind
    kind create cluster --config=kind.yaml --name=fullcycle
    kubectl cluster-info --context kind-fullcycle
    kubectl config get-clusters
    kubectl config use-context NAME

    docker build -t gladstonethiago/hello-go .
    docker run --rm -p 80:80 gladstonethiago/hello-go
    docker push gladstonethiago/hello-go

    kubectl apply -f pod.yaml (create first pod)
    kubectl get po (get pods)

    kubectl port-forward pod/goserver 80:80
    kubectl delete pod goserver

    kubectl apply -f replicaset.yaml

    kubectl get replicasets

    docker build -t gladstonethiago/hello-go:v2 .
    docker push gladstonethiago/hello-go:v2

    kubectl describe pod goserver-w4dl7

    kubectl get replicasets

    kubectl delete replicaset goserver

    kubectl apply -f deployment.yaml

    kubectl rollout history deployment goserver
    kubectl rollout undo deployment goserver

    kubectl proxy --port=9090
    http://localhost:9090/api/v1/namespaces/default/services/goserver-service

    kubectl apply -f services.yaml
    kubectl get svc
    kubectl port-forward svc/goserver-service 8000:80
    kubectl delete svc goserver-service

    docker build -t gladstonethiago/hello-go:v5 .
    docker push gladstonethiago/hello-go:v5


    kubectl apply -f deployment.yaml
     kubectl port-forward svc/goserver-service 8000:80


     kubectl apply -f configmap-env.yaml
     kubectl apply -f deployment.yaml
     kubectl port-forward svc/goserver-service 8000:80


     kubectl apply -f configmap-family.yaml
     kubectl apply -f deployment.yaml

     kubectl logs goserver-5f85c5bccf-7d25p (log pod)

    docker build -t gladstonethiago/hello-go:v5.2 .
    docker push gladstonethiago/hello-go:v5.2

    echo "thiago" | base64 dGhpYWdvCg==
    echo "123456" | base64 MTIzNDU2Cg==

    kubectl apply -f secret.yaml
    kubectl apply -f deployment.yaml

    kubectl port-forward svc/goserver-service 8000:80
    kubectl get pod
    kubectl exec -it goserver-5b789d8857-ml92n --bash
    echo $
