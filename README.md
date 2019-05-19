# gvisor-playground

## Create cluster
```$ ./create-cluster.sh ```

## Deploy nginx
```$ kubectl apply -f nginx.yaml ```

## Show gvisor infos
```
$ kubectl get runtimeclass gvisor

$ kubectl get pods -o jsonpath=$'{range .items[*]}{.metadata.name}: {.spec.runtimeClassName}\n{end}'
```