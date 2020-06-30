provider "azurerm" {
  subscription_id = "f7e714c1-5faf-460d-8d08-17ea4ba5b9f3"
  features {}
}
module "bridgecrew-read" {
  source           = "./terraform-azurerm-bridgecrew-azure-read-only/"
  org_name         = "responsive"
  bridgecrew_token = "c873f927-5201-5de5-9390-b6901dc7fecb"
}
