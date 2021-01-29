# sameersbn-gitlab-helm

Helm chart for [sameersbn/gitlab](https://github.com/sameersbn/docker-gitlab).

## Requirements

Written for Helm 3.

## Example use

Create a value file, e.g. `values.yaml`:

```
-bash-4.2$ cat config-local-path.yml
redis:
  persistence:
    storageClassName: local-path
    enabled: true

  nodeAffinity:
    selectorMatch:
      key: 'k3s.io/hostname'
      values:
      - 'k3s-worker-0.example.com'


postgresql:
  persistence:
    storageClassName: local-path
    enabled: true

  nodeAffinity:
    selectorMatch:
      key: 'k3s.io/hostname'
      values:
      - 'k3s-worker-0.example.com'


gitlab:
  persistence:
    data:
      storageClassName: local-path
      enabled: true

  nodeAffinity:
    selectorMatch:
      key: 'k3s.io/hostname'
      values:
      - 'k3s-worker-0.example.com'

  env:
    host: 'gitlab.example.org'

    signupEnabled: 'false'
```

Then a file with this script, e.g. `install.sh`:

```
#!/bin/bash

helm uninstall gitlab -n gitlab | true
while true; do
    output=$(kubectl get pvc -n gitlab 2>&1 >/dev/null)
    if [[ $output == *"No resources found."* ]]; then
        break
    fi
    sleep 5
done
kubectl create namespace gitlab | true
helm install -f config-local-path.yml --namespace gitlab gitlab ./sameersbn-gitlab-helm
kubectl apply -f ./sameersbn-gitlab-helm/gitlab-ingress.yaml | true
```

An example `gitlab-ingress.yaml` resource exists in the root of this file.

Otherwise, open a kubectl port-forward to gitlab.

## License

3-Clause BSD License

## Author Information

Michael Joseph Walsh <mjwalsh@nemonik.com>
