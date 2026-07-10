# S3 Backend Configuration
#
# IMPORTANT: Follow these steps to set up remote state storage:
#
# 1. First run: terraform init (without backend)
# 2. Create the infrastructure: terraform apply
# 3. Manually create an S3 bucket for Terraform state (or use Terraform to create one)
# 4. Uncomment the backend block below
# 5. Run: terraform init -migrate-state
#    (This will migrate your local state to the S3 backend)
#
# To set environment variables for backend:
#   export TF_BACKEND_BUCKET="your-state-bucket-name"
#   export TF_BACKEND_REGION="ap-south-1"
#   export TF_BACKEND_KEY="portfolio-site/terraform.tfstate"
#
# Or pass them via backend config during init:
#   terraform init -backend-config="bucket=your-bucket" -backend-config="region=ap-south-1"
#

# terraform {
#   backend "s3" {
#     bucket         = var.state_bucket      # Set via environment variable or -backend-config
#     key            = "portfolio-site/terraform.tfstate"
#     region         = "ap-south-1"
#     encrypt        = true
#     dynamodb_table = "terraform-locks"
#   }
# }

# Note: S3 backend variables must be set via environment variables or CLI flags
# because the backend block doesn't support variable interpolation.
# See the commented configuration above for examples.
