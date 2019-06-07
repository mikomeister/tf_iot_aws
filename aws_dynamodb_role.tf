resource "aws_iam_role" "IoTDynamoDbRole" {
  name = "iot_DynamoDb_role"
  description = "IAM role for DynamoDb"
  assume_role_policy = <<EOF
{
   "Version": "2012-10-17",
   "Statement": {
     "Effect": "Allow",
     "Principal": {"Service": "iot.amazonaws.com"},
     "Action": "sts:AssumeRole"
   }
}
 EOF
  tags = {
    tag-key = "IAM-DynamoDb"
  }
}
