/* terraform {
  backend "s3" {
    bucket         = "terraform-backend-bucket-b"
    key            = "terraform-projects/terraform.tfstate" # <--- unique key
    region         = "us-east-2"
    dynamodb_table = "terraform-backend-table-d"
  }
}
*/
