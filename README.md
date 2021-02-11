# sameersbn-gitlab-helm

Helm chart for [sameersbn/gitlab](https://github.com/sameersbn/docker-gitlab).

## Requirements

Written for Helm 3.

## Example use

You can clone this repo, cd into the repo and then create a value file.

An example value file, e.g. [example_values.yaml](example_values.yaml):

And then execute something like the [example_install.sh](example_install.sh) 

The example ingress would expose gitlab on http://gitlab.example.com or you can access the gitlab pod or service via `kubectl port-forward`.

## To install via my chart repository

```
helm repo add nemonik https://nemonik.github.io/helm-charts/
helm repo update
helm search repo gitlab
helm install gitlab -n gitlab nemonik/gitlab
kubectl get pods -n gitlab -w
```

## License

3-Clause BSD License

## Author Information

Michael Joseph Walsh <mjwalsh@nemonik.com>
