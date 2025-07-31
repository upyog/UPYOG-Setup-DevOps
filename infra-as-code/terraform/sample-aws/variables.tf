#
# Variables Configuration. Check for REPLACE to substitute custom values. Check the description of each
# tag for more information
#

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  default = "fsm" #REPLACE
}

variable "vpc_cidr_block" {
  description = "CIDR block"
  default = "192.168.0.0/16"
}


variable "network_availability_zones" {
  description = "Configure availability zones configuration for VPC. Leave as default for India. Recommendation is to have subnets in at least two availability zones"
  default = ["ap-south-1b", "ap-south-1a"] #REPLACE IF NEEDED
}

variable "availability_zones" {
  description = "Amazon EKS runs and scales the Kubernetes control plane across multiple AWS Availability Zones to ensure high availability. Specify a comma separated list to have a cluster spanning multiple zones. Note that this will have cost implications"
  default = ["ap-south-1b"] #REPLACE IF NEEDED
}

variable "kubernetes_version" {
  description = "kubernetes version"
  default = "1.32"
}

variable "instance_type" {
  description = "eGov recommended below instance type as a default"
  default = "r5ad.large"
}

variable "override_instance_types" {
  description = "Arry of instance types for SPOT instances"
  default = ["r5a.large", "r5ad.large", "r5d.large", "m4.xlarge"]
  
}

variable "number_of_worker_nodes" {
  description = "eGov recommended below worker node counts as default"
  default = "4" #REPLACE IF NEEDED
}

variable "ssh_key_name" {
  description = "ssh key name, not required if your using spot instance types"
  default = "fsm-ssh-key" #REPLACE
}


variable "db_name" {
  description = "RDS DB name. Make sure there are no hyphens or other special characters in the DB name. Else, DB creation will fail"
  default = "fsm" #REPLACE
}

variable "db_username" {
  description = "RDS database user name"
  default = "fsm" #REPLACE
}

#DO NOT fill in here. This will be asked at runtime
variable "db_password" {}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCqC9KQJ774yo3G1/AbSy64zlPb+LbS0mKgSeFTcIQZyIykDVAqsJH2kA+1WNyvN0bluhClYzJbqLrl4wtsDo8EvNYJdFZX/buzbif74V0mvspREy1h5u4v+OyHyLiErDzpMctzOlFPyb3mMMaVvHlpSBp4f0EUWzufFW6PorbC7scxOorZbsMkuYLfuiKqdAFO+Pyc83127ipNmlfJk8+SSBGVgv6zFp9ml+DR6le1RyXvfpa9CFXmVjLNzB8kx8JAA9FAc1HNqIov0liEAKoId5+87OFkcqhkYWiopOuXzh1ekfHVy1Cdmp7FWd9c8Yu14dvsSb3YPK+1XCX2NM12uyM6d8ke28RiheuhhTFLybbKQ77N3wO6sB55dx3qDKvZEoYEY9v4zb5LV2eGcBOFOZhCkut6XS8VPWim96BWSyLFEw5tQBJeJimrDmusvdC20mEHt+I8ouereebK9AUOXusAT97YNidaTxjLLX/Kl4G9dd5HK2iuDTSqgb8JbsvKgn7gAYo+0GB6YXHxlPlJmbwpJsaWluf3YjJ7NVH22hxLXmeHtZvWlphybOmYwaP7jHOijB8V1BKQedS55SPW8Kdv9GUToW5IBq3y56aUsjk61Y2WQ09ywjOu/Irh4EhAoPz09aHPko3Vz5bIn6r9W0rxAHC0oSwpiXhhkLOaBw== atul@niua.org"
  description = "ssh key"
}

## change ssh key_name eg. digit-quickstart_your-name



