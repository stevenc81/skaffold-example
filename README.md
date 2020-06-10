### Skaffold Example: Continuous Development with Helm

#### What you need
* Skaffold CLI
* kubectl CLI to minikube or a remote cluster
* Helm CLI

#### To run
Upadte the `skaffold.yaml` to your own Dockerhub user (from stevenc81)

```
skaffold dev
```

#### To see
```
kubectl get svc node-example
```

Copy the URL from `EXTERNAL-IP` from the output and paste on your web browser


#### To continuously develop
* Change the output from `index.js` (line 6) in `src/` from `'Hello Skaffold!'` to something else
* Reload your web browser 
* BAM!

#### To stop
`Ctrl+C` and all the Helm deployed resources will be cleaned up