# Fix issue with PhpFpm Application Deployed on Kubernetes

### Follow the below steps to fix the issue, dont delete Deployment, Service or ConfigMap.

 1. Edit the config map and to correct the index.php name, or add it if not present.
 `kubectl edit cm nginx-config`

 2. Edit the Service to update the correct port for nginx.
`kubectl edit svc nginx-service`

 3. Now delete the pod so that new pod will spin-up with updated config map.
`kubectl delete pod nginx-deploy-zxnfyl`

 4. Check the new pod is  running
`kubectl get pod`

 5. Now copy the `/tmp/index.php` to `/var/www/html` of nginx container.
`kubectl cp /tmp/index.php nginx-deploy-zxnfyl:/var/www/html`


All done. Now check the nginx-service on given nodePort.
