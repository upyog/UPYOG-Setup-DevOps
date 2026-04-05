#
# Variables Configuration. Check for REPLACE to substitute custom values. Check the description of each
# tag for more information
#

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  default = "lts-changes" #REPLACE
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
  default = "1.34"
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
  default = "lts-chages-ssh-key" #REPLACE
}


variable "db_name" {
  description = "RDS DB name. Make sure there are no hyphens or other special characters in the DB name. Else, DB creation will fail"
  default = "ltschanges" #REPLACE
}

variable "db_username" {
  description = "RDS database user name"
  default = "ltschanges" #REPLACE
}

#DO NOT fill in here. This will be asked at runtime
variable "db_password" {}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDbweDUT9NKTgvNRDKQfHVoEae6P7UnNEPTYI4UtZ1KjM1+nAZkWTEC3xMXGI00hluMKGwb80iJKHzSzCsedMeTSiluiKk7ctbzt8z5WvthT7p5wUqiuiOvveKpapy8sJiXzDoThjpfZKqQ6Rz2amLQJlzccF8CFfgNl4bMmCKAXKZQZhlI4aTlNqotOY1JB7j4X8g4mJO7BC92Nbm3+ZUnxi//mBcewzp/JvwbskTOcamd1w9u/E+xr/RyV14r7CCao1b/+Rf5BpXKnRh/exXHXVwmoQl9DrymmVdL+Y/rF40yXkfCcftEuJ/FcewR+VsdARl0LB8cXj+4ciII1sov"
  description = "ssh key"
}

## change ssh key_name eg. digit-quickstart_your-name



