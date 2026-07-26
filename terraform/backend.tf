# Remote state backend configuration
#
# To enable remote state storage:
# 1. Run `terraform init` WITHOUT uncommenting this block (uses local state)
# 2. Create the S3 bucket and DynamoDB table for state management:
#    - S3 bucket for storing state files
#    - DynamoDB table for state locking (table name: terraform-locks)
# 3. Uncomment the terraform block below
# 4. Replace the bucket name and region with your values
# 5. Run `terraform init -migrate-state` to migrate local state to S3
# 6. Confirm the migration when prompted

# terraform {
#   backend "s3" {
#     bucket         = "your-terraform-state-bucket-name"
#     key            = "portfolio-site/terraform.tfstate"
#     region         = "ap-south-1"
#     encrypt        = true
#     dynamodb_table = "terraform-locks"
#   }
# }
