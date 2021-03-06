# Bridgecrew AZURE ReadOnly Integration
[![Maintained by Bridgecrew.io](https://img.shields.io/badge/maintained%20by-bridgecrew.io-blueviolet)](https://bridgecrew.io)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/bridgecrewio/terraform-azurerm-read-only.svg?label=latest)](https://github.com/bridgecrewio/terraform-azurerm-bridgecrew-read-only/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.12.0-blue.svg)

Implementing this module allows visibility to your azure subscription on [Bridgecrew Cloud](https://www.bridgecrew.cloud).

## Module contents
This module creates a an application registration in your subscription with a service principal for Bridgecrew to use. The service principal requires the "Reader" role to function correctly.

## Configuration

### Prerequisites
This module requires the cURL library to be installed on your machine. To check if you have cURL installed, type the following command in your terminal:
```shell script
curl --help
```

### Installation
To run this module, supply the name of the company as registered in [Bridgecrew Cloud](https://www.bridgecrew.cloud) as such:
```hcl-terraform
module "bridgecrew-read" {
  source           = "bridgecrewio/bridgecrew-azure-read-only/azure"
  org_name         = "acme"
  bridgecrew_token = "YOUR_TOKEN"
}
```

# Azure ReadOnly Deployment Module
This module allows you to connect your Azure subscription to [Bridgecrew Cloud](https://bridgecrew.cloud)

## Configuration
```hcl-terraform
module "bridgecrew-azure" {
  source          = "bridgecrewio/read-only/azure"
}
```

## Variables and Outputs
### Variables
|name|description|example|
|----|-----------|-------|
|org_name|Your Bridgecrew org name|acme|
|bridgecrew_token | Bridgecrew API token | 1f668476-63d2-4f30-8fa1-976303c32b40||

### Outputs
This module outputs the JSON object that is required to integrate with [Bridgecrew Cloud](https://bridgecrew.cloud).
This object consists of these fields:

|name|description|example|
|----|-----------|-------|
|subscription_id|The Subscription ID this module was deployed to|62f5e458-9e12-40c9-a1b4-23badcdd19ca|
|tenant_id | The ID of the tenant as described by Azure | 1f668476-63d2-4f30-8fa1-976303c32b40|
|client_id|The ID of the Service Principal's Application ID | d02f970f-e10e-4249-9960-0d959b246579||