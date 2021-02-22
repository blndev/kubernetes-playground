This Wordpress deployment is based on https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/

The WordPress container mounts the PersistentVolume at /var/www/html for website data files. The WORDPRESS_DB_HOST environment variable sets the name of the MySQL Service defined above, and WordPress will access the database by Service. The WORDPRESS_DB_PASSWORD environment variable sets the database password from the Secret kustomize generated.

As kubectl Version 1.14 has kustomize integrated, we could simple run

````bash
kubectl apply -k ./
````

Run the following command to get the IP Address for the WordPress Service:
````bash
minikube service wordpress --url

````


Remove everything:
````bash
kubectl delete -k ./
````
