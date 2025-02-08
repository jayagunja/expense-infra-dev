module "mysql_sg" {
    source = "git::https://github.com/jayagunja/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    sg_description = "Created for MYSQL instance in expense dev"
    common_tags = var.common_tags
    vpc_id = data.aws_ssm_parameter.vpc_id.value
}

module "backend_sg" {
    source = "git::https://github.com/jayagunja/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "backend"
    sg_description = "Created for backend instance in expense dev"
    common_tags = var.common_tags
    vpc_id = data.aws_ssm_parameter.vpc_id.value
}

module "frontend_sg" {
    source = "git::https://github.com/jayagunja/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "frontend"
    sg_description = "Created for frontend instance in expense dev"
    common_tags = var.common_tags
    vpc_id = data.aws_ssm_parameter.vpc_id.value
}

module "bastion_sg" {
    source = "git::https://github.com/jayagunja/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "bastion"
    sg_description = "Created for bastion instance in expense dev"
    common_tags = var.common_tags
    vpc_id = data.aws_ssm_parameter.vpc_id.value
}



