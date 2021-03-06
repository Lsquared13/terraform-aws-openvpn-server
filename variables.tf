variable "public_key" {
  description = "The public SSH key to access the OpenVPN server."
}

variable "sub_domain" {
  description = "A sub-domain hosted by Route53 that you can administer. FoxPass integration expects this has only one '.' character."
}

variable "cert_public_key" {
  description = "The public certificate to use for TLS connections"
}

variable "cert_private_key" {
  description = "The private certificate key to use for TLS connections"
}

variable "openvpn_ami" {
  description = "The OpenVPN Access Server AMI from the marketplace"
}

variable "openvpn_admin_pw" {
  description = "The bind user password provided by FoxPass. Will double as OpenVPN admin password."
}

variable "aws_region" {
  description = "The AWS region to launch the server in"
  default     = "us-east-1"
}

variable "region_dns_common_name" {
  description = "A name to use to refer to the region other than its full name. If not specified, this defaults to the full region name."
  default     = ""
}

variable "oncall_phone_list" {
  description = "The list of phone numbers to receive oncall notifications."
  default     = []
}

variable "vpc_base_cidr" {
  description = "The CIDR that the AWS VPC for VPN servers will be assigned from"
  default     = "10.0.0.0/12"
}

variable "vpn_cidr" {
  description = "The CIDR that the VPN will use"
  default     = "172.27.224.0/20"
}

variable "server_number" {
  description = "A unique incrementing integer amongst VPN servers being run. Will be used to assign non-conflicting CIDR blocks."
  default     = 0
}

variable "private_key" {
  description = "The private SSH key to access the OpenVPN server."
  default     = ""
}

variable "openvpn_admin_user" {
  description = "The OpenVPN Admin Username"
  default     = "openvpn"
}

variable "openvpn_reroute_gw" {
  description = "1 to reroute all traffic through the VPN or 0 otherwise"
  default     = "0"
}

variable "openvpn_reroute_dns" {
  description = "1 to reroute dns queries through the VPN or 0 otherwise"
  default     = "0"
}

variable "openvpn_instance_type" {
  description = "The Type of instance to use for the OpenVPN Access Server"
  default     = "t2.micro"
}

variable "authentication_timeout_seconds" {
  description = "The number of seconds before LDAP authentication times out. Must be long enough to respond to the MFA push notification."
  default     = "30"
}

variable "use_dedicated_instance" {
  description = "Whether or not to use a dedicated instance."
  default     = false
}

variable "enable_termination_protection" {
  description = "Whether to use termination protection on the server. Set to false for easier testing."
  default     = true
}

variable "threatstack_deploy_key" {
  description = "Deploy key to use to activate threatstack agents, if using one"
  default     = ""
}
