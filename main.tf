module "aws_iot_thing" {
  source = "./modules/aws_iot_thing"
}
module "iam_roles" {
  source = "./modules/iam_roles"
}