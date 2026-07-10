# LaunchMyWork Ingress Architecture

This folder tracks the ingress evolution for LaunchMyWork.

## Active

active-envoy-gateway/

Current low-cost Gateway API implementation.

Cloudflare
-> Azure LoadBalancer
-> Envoy Gateway
-> Gateway API
-> HTTPRoute
-> Service
-> Pod

## Archived

archived-agc-gateway/
archived-agc-alb/

Previous working Azure Application Gateway for Containers architecture.

Cloudflare
-> Azure Application Gateway for Containers
-> Azure Gateway API
-> HTTPRoute
-> Service
-> Pod

This worked successfully with HTTPS and wildcard TLS, but it was archived because AGC created higher idle cost during the development stage.

## Experimental

experimental-cilium-gateway/

AKS was migrated to Azure CNI Powered by Cilium for dataplane/network policy, but AKS-managed Cilium did not expose a Cilium GatewayClass by default. Envoy Gateway was selected instead to keep Gateway API while lowering cost.
