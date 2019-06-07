resource "aws_iam_role" "IoTLambdaRole" {
  name = "iot_lambda_role"
  description = "IAM role for Lambda"
  assume_role_policy = <<EOF
{
   "Version": "2012-10-17",
   "Statement": {
     "Effect": "Allow",
     "Principal": {"Service": "lambda.amazonaws.com"},
     "Action": "sts:AssumeRole"
   }
}
 EOF
  tags = {
    tag-key = "IAM-Lambda"
  }
}
