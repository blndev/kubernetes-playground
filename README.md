# Kubernetes-Playground

This Repository is used to play around with different ways of Kubernetes deployments

Therefore we have a few folders which describing the technology and sub folders with the demo deployments.

## DevTest Environment
I use Minikube for testing in general.
https://minikube.sigs.k8s.io/docs/start/

## Deployments
### Terraform

Kubernetes deployments based on terraform scripts
just go the the Project folder and execute:

```bash
terraform init
terraform apply --auto-approve
```

That will create all requested Resources in the configured Kubernetes Cluster.
Currently in the default context.

All resources can be removed with 
```bash
terraform destroy
```
