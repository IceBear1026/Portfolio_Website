resource "azapi_update_resource" "aks_gateway_addons" {
  type = "Microsoft.ContainerService/managedClusters@2026-04-02-preview"
  resource_id = var.aks_id

  body = {
    properties = {
      ingressProfile = {
        applicationLoadBalancer = {
          enabled = var.application_load_balancer_enabled
        }

        gatewayAPI = {
          installation = var.gateway_api_installation
        }
      }
    }
  }
}