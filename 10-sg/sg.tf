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

module "app_alb_sg" {
    source = "git::https://github.com/jayagunja/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "app-alb"
    sg_description = "Created for backend app ALB in expense dev"
    common_tags = var.common_tags
    vpc_id = data.aws_ssm_parameter.vpc_id.value
}

#ALB accepting  traffic from bastion
resource "aws_security_group_rule" "app_alb_bastion" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.bastion_sg.sg_id   
  security_group_id = module.app_alb_sg.sg_id
}

resource "aws_security_group_rule" "bastion_public" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks = ["183.83.230.8/32"]  
  security_group_id = module.bastion_sg.sg_id
}



