# Archived: Azure Application Gateway for Containers Gateway API

This folder preserves the previous working LaunchMyWork ingress architecture.

Previous working architecture:

Cloudflare
-> Azure Application Gateway for Containers
-> GatewayClass: azure-alb-external
-> Gateway: launchmywork-gateway
-> HTTPRoute
-> Service
-> Pod

Why archived:
Application Gateway for Containers worked successfully, including HTTPS with cert-manager and a wildcard Let's Encrypt certificate. However, it created higher idle cost for this development-stage platform.

Current direction:
The active ingress path is being migrated to a cheaper Cilium Gateway API / Azure LoadBalancer based design.

Do not apply this folder unless intentionally restoring the AGC architecture.
