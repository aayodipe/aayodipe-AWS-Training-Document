resource "aws_iam_user" "Terraform-profile" {
  name = "Terraform-IAM"
  path = "/"

  tags = {
    Name = "Terraform-IAM"
  }
}

resource "aws_iam_user" "aayodipe-profile" {
  name = "aayodipe"
  path = "/"

  tags = {
    Name = "aayodipe"
  }
}





# resource "aws_iam_user" "user-profile" {
#   name = var.profile-name
#   path = '/'

#   tags = {
#     Name = var.tag-name
#   }
# }
