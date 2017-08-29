# Terraform VPC
I based on the [Terraform ECS] (https://github.com/arminc/terraform-ecs ), I spited some modules to create VPC.

You can change variables in `vpc.tfvars` , 

For example: I want to create a VPC with CIDR ( 10.0.0.0/16 ), two public subnet and two private subnet.
```
vpc_cidr = "10.0.0.0/16"
environment = "production"
public_subnet_cidrs = ["10.0.0.0/24", "10.0.1.0/24"]
private_subnet_cidrs = ["10.0.50.0/24", "10.0.51.0/24"]
availibility_zones = ["us-east-1a", "us-east-1f"]
region = "us-east-1"
```

Then run

```
terraform init
terraform plan -var-file=vpc.tfvars
terraform apply -var-file=vpc.tfvars
```