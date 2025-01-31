# infrastructure

Personal infrastructure automation

## terraform

[terraform](./terraform)

Infrastructure management on DigitalOcean

### features

- DNS management
- K8s cluster
- SSL certificates
- Flux bootstrapping

## cluster

GitOps config for the k8s cluster

[Bootstrapped flux config](./cluster)

[Cluster config](./cluster-config)

### features

- Gatway API with traefik
- SSL certs via DigitalOcean (no cert manager)
- External DNS integrated with gateway api
- SOPS for secrets
