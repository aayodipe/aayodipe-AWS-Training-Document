data "aws_internet_gateway" "prod-igw" {
internet_gateway_id = "igw-013e3c247b6000d9c"
}

output "prod_data_gtw" {
    value = "${data.aws_internet_gateway.prod-igw.arn}"
}