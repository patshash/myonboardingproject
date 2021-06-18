//--------------------------------------------------------------------
// Variables
variable "onboarding_token" {}
variable "oauthid" {}

//--------------------------------------------------------------------
// Modules
module "onboarding" {
  source  = "tfe.patrick.azure.hashidemos.io/sharedservices/onboarding/tfe"
  version = "0.0.11"

  hostname = "tfe.patrick.azure.hashidemos.io"
  oauthid = "${var.oauthid}"
  organisation = "app-team-1"
  project_name = "digitaltransformation"
  token = "${var.onboarding_token}"
}
