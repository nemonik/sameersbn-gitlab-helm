# sameersbn-gitlab-helm

Helm chart for [sameersbn/gitlab](https://github.com/sameersbn/docker-gitlab).

## Requirements

Written for Helm 3.

## Example use

```
kubectl create namespace gitlab
helm install --set gitlab.host="gitlab.example.com" \
   --set gitlab.signupEnabled="false" \
   --set gitlab.secrets.dbKeyBase="long-and-random-alpha-numeric-string" \
   --set gitlab.secrets.secretKeyBase="long-and-random-alpha-numeric-string" \
   --set gitlab.secrets.otpKeyBase="long-and-random-alpha-numeric-string" \
   --set redis.persistence.enabled="true" \
   --set redis.persistence.storageClassName="local-path" \
   --set postgresql.persistence.enabled="true" \
   --set postgresql.persistence.storageClassName="local-path" \
   --set gitlab.persistence.enabled="true" \
   --set gitlab.persistence.storageClassName="local-path" \
   --namespace gitlab gitlab ./gitlab
```

## License

3-Clause BSD License

## Author Information

Michael Joseph Walsh <mjwalsh@nemonik.com>
