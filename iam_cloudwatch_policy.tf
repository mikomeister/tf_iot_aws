resource "aws_iam_policy" "IoTCloudwatchMetricPolicy" {
  name        = "iot_cloudwatchMetric_policy"
  description = "iot_cloudwatchMetric policy"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": {
        "Effect": "Allow",
        "Action": "cloudwatch:PutMetricData",
        "Resource": [
           "*"
        ]
    }
}
EOF
}