//--------------------------------------------------------------------
// Variables
variable "onboarding_token" {}

//--------------------------------------------------------------------
// Modules
module "onboarding" {
  source  = "tfe.patrick.azure.hashidemos.io/hashicorp/onboarding/tfe"
  version = "0.0.11"

  hostname = "tfe.patrick.azure.hashidemos.io"
  oauthid = "ot-3o8GUfKqXFsL3zvA"
  organisation = "patrickorg"
  project_name = "mynewproject"
  token = "${var.onboarding_token}"
}
