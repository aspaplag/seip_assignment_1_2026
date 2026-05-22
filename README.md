# Assignment Build Guide

## 1. Cloning the repo:

    ```
    git clone https://github.com/aspaplag/seip_assignment_1_2026.git
    cd seip_assignment_1_2026
    ```

## 2. Starting the cluster

Starts the local kubernetes cluster so the app can run in it.

    ```
    minikube start
    ```


## 3. Applying all the manifest files

Creates the configmap, secret, deployment and service in the cluster.

    ```
    kubectl apply -f k8s/
    ```

## 4. Checking cluster and pods state

Confirms that the pods are running.

    ```
    kubectl get all -n default
    kubectl get configmap,secret
    ```

## 5. Accessing the cluster

Forwards the internal ClusterIP service to your local machine so you can reach the app.

    ```
    kubectl port-forward service/echo-api-service 8080:80
    ```

In another terminal so you can see welcome message and auth status:

    ```
    curl http://localhost:8080/
    curl http://localhost:8080/secure-config
    ```