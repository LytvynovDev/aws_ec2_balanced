# AWS EC2 with a load balancer

## Description
Terraform config to instantiate multiple EC2 servers with Docker and Nginx by default.
A load balancer is configured to balance traffic between instances using a round robin approach.

## Usage

- Update `organization` and `workspaces.name` in [cloud.tf](cloud.tf);
- Create variables for your project in Terraform Cloud;
- Obtain and save credentials for a remote host: `terraform login`;
- Prepare your working directory for other commands: `terraform init`;
- Check whether the configuration is valid: `terraform validate`;
- Show changes required by the current configuration: `terraform plan`;
- Create or update infrastructure: `terraform apply`;
- Destroy previously-created infrastructure: `terraform destroy`.
