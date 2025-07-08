Terraform configurations for provisioning AWS infrastructure. Includes remote backend setup using S3 and DynamoDB for state management.

## terraform-project folder Terraform Files Overview

- **`ec2.tf`** – Defines and provisions 3 EC2 instances with unique names using a variable list.
- **`variables.tf`** – Contains reusable input variables for EC2 instance names and S3 bucket name.
- **`output.tf`** – Displays the public IP addresses of all created EC2 instances after apply.
- **`bucket.tf`** – Intended to create an S3 bucket using a variable name.
- **`provider.tf`** – Configures the AWS provider and sets the deployment region (`us-east-2`).
- **`terraform.tf`** – Specifies the required provider source and version for the AWS provider.
- **`terraform2.tf`** – Contains optional configuration for using a remote S3 backend with DynamoDB for state locking.

> **Note:** If a resource file (like `bucket.tf` or `terraform2.tf`) is currently commented out and you want to use it, **remove the comments** before running `terraform init` and `terraform plan`.


## backend folder Terraform Files Overview

- **`backend.tf`** – Provisions an S3 bucket and DynamoDB table to be used for Terraform remote state backend and state locking.
- **`variables.tf`** – Contains variables for the S3 bucket name and DynamoDB table name used in the backend configuration.


Syncing Terraform State After Manual Changes
To recreate a manually deleted instance:

**'terraform apply'** – Recreates the missing resource(s) based on the current configuration.

To only sync the Terraform state without making any changes:

**'terraform apply -refresh-only'** – Updates the state file to reflect the current real infrastructure without applying changes.

