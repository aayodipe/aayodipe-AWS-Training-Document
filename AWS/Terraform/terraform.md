working with provider
working with resources
working with basic commands in terraform(fmt, init, plan, apply and destroy, --auto-approve)

### How to destroy a single resources with -target
terraform destroy -target aws_instance.main

working with variable(string,number,list,map,objects,default)
### type of variables
    - String
    - Number
    - List
    - Map
    
## Working with Variable Assignment
- Default variable
- command line flag e.g 
    terraform apply -var="image_id=ami-abc123"
    terraform apply -var='image_id_list=["ami-abc123","ami-def456"]' -var="instance_type=t2.micro"
    terraform apply -var='image_id_map={"us-east-1":"ami-abc123","us-east-2":"ami-def456"}'
- variable.tfvars

working with variable files 
### working with locals

output name{
    value=aws_instance.main.id
}
## Working with Dynamic Block
## Working with count and for_each
## Working with Zipmap
### working with output and attribute

## workings with module
## understand terraform.tfState file
## working with S3 backend

## Working with -replace instead of taint 
    - use to replace terraform resources after manual modification
