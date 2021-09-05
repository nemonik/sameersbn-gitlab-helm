[![GitHub license](https://img.shields.io/github/license/nemonik/sameersbn-gitlab-helm)](./LICENSE)
[![GitHub Forks](https://img.shields.io/github/forks/nemonik/sameersbn-gitlab-helm?style=social)](https://github.com/nemonik/ameersbn-gitlab-helm/network/members)
[![Github Stars](https://img.shields.io/github/stars/nemonik/sameersbn-gitlab-helm?style=social)](https://github.com/nemonik/ameersbn-gitlab-helm/stargazers)
<a href="https://www.buymeacoffee.com/nemonik" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="20" width="85"></a>

# sameersbn-gitlab-helm

https://github.com/nemonik/sameersbn-gitlab-helm is Helm chart for [sameersbn/gitlab](https://github.com/sameersbn/docker-gitlab).

## Requirements

Written for Helm 3.

## Example use

You can clone this repo, enter the repository folder and then execute something like the [example_install.sh](example_install.sh).

The script will spin up gitlab using the example value file, e.g. [example_values.yaml](example_values.yaml).

Use the chart to configure an ingress to expose gitlab on http://gitlab.example.com or you can access the gitlab pod or service via `kubectl port-forward`.

## To install via my chart repository

```
helm repo add nemonik https://nemonik.github.io/helm-charts/
helm repo update
helm search repo gitlab
wget https://raw.githubusercontent.com/nemonik/sameersbn-gitlab-helm/master/example_values.yaml
kubectl create namespace gitlab | true
helm install gitlab nemonik/gitlab -f example_values.yaml --namespace gitlab
kubectl get pods -n gitlab -w
```

## License

3-Clause BSD License

## Author Information

Michael Joseph Walsh <mjwalsh@nemonik.com>
