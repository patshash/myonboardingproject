//--------------------------------------------------------------------
// Variables
variable "onboarding_token" {}
variable "oauthid" {}

//--------------------------------------------------------------------
// Modules
module "onboarding" {
  source  = "tfe.patrick.azure.hashidemos.io/dryrun/onboarding/tfe"
  version = "0.0.11"

  hostname = "tfe.patrick.azure.hashidemos.io"
  oauthid = "${var.oauthid}"
  organisation = "patrickorg"
  project_name = "mynewproject"
  token = "${var.onboarding_token}"
}
