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