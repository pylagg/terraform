variable "cluster-service-role" {
	description = "Role for cluster"
	default = "ekscluster_pyl"
}
variable "node-role" {
        description = "Role for node"
        default = "eksnode_pyl"
}
variable "aws-region" {
	description = "Region for cluster and vpc"
	default = "us-east-1"
}
variable "vpc" {
	description = "Vpc for cluster"
	default = "kuber_vpc"
}
variable "node-subnet" {
	description = "Subnet for node"
	default = "public_1"
}
