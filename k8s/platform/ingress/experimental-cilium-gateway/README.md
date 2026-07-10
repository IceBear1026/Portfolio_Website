# Active: Cilium Gateway API

Target architecture:

Cloudflare
-> Azure LoadBalancer
-> Cilium Gateway API
-> Gateway
-> HTTPRoute
-> Service
-> Pod

Goal:
Replace Azure Application Gateway for Containers with a lower-cost Gateway API implementation while keeping the modern Gateway/HTTPRoute model.

This folder will contain the active Cilium Gateway resources.
