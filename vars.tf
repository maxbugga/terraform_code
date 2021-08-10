variable "region" {
  default = "us-east-1"
}
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}
 variable "Database-snapshot-identifier" {
   default            = "arn:aws:rds:us-east-1:107222298038:snapshot:subbu-rds-final-snapshot"
   description        = "the database snapshot ARN"
   type               = string  
 }

  variable "Database-instance-classic" {
   default            = "db.t2.micro"
   description        = "the database instance type"
   type               = string  
 }

variable "Database-instance-identifier" {
   default            = "subbu-rds"
   description        = "the database instance identifier"
   type               = string  
 }

 
variable "multi-az-deployment" {
   default            = false
   description        = "create a standbydb instance"
   type               = string 
 }