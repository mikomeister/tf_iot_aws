resource "aws_iam_policy" "IoTDynamoDbPolicy" {
  name        = "iot_DynamoDb_policy"
  description = "iot DynamoDb policy"

  policy = <<EOF
{
   "Version": "2012-10-17",
   "Statement": {
     "Effect": "Allow",
     "Action": "dynamodb:PutItem",
     "Resource": "arn:aws:dynamodb:${var.region}:${var.account_id}:table/IoTSensor"
   }
}
EOF
}