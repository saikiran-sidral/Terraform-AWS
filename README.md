# Terraform AWS VPC Setup:

This project contains Terraform scripts to set up a Virtual Private Cloud (VPC) on AWS. 
The setup includes public and private subnets, with a Bastion Host in the public subnet and an Application Server in the private subnet.
This allows you to manage your infrastructure securely and efficiently.

## Architecture:

- VPC: A custom VPC to host the network.
- Subnets:
  - Public Subnet: Hosts the Bastion Host.
  - Private Subnet: Hosts the Application Server.
- Internet Gateway: Provides internet access to the VPC.
- NAT Gateway: Enables internet access for resources in the private subnet.
- Security Groups: Controls access between the Bastion Host and Application Server.
- EC2 Instances:
  - Bastion Host: Provides secure SSH access to the private instances.
  - Application Server: A sample web server deployed in the private subnet.

## Setup

1. Clone the repository:

   git clone https://github.com/saikiran-sidral/Terraform-AWS.git
   cd Terraform-AWS/Terraform-VPC

2. Initialize Terraform: "terraform init"

3. Review the plan: "terraform plan"

4. Apply the configuration: "terraform apply"

5. Access the Bastion Host:

   After the infrastructure is deployed, you can SSH into the Bastion Host:

   "ssh -i <your-private-key.pem> ec2-user@bastion-host-public-ip"

6. Access the Application Server:

   From the Bastion Host, SSH into the private Application Server:

   "ssh -i <your-private-key.pem> ec2-user@app-server-private-ip"

7. Destroy the infrastructure to avoid ongoing costs: "terraform destroy"

## Acknowledgments

Terraform Documentation: https://www.terraform.io/docs  
AWS Documentation: https://aws.amazon.com/documentation/
