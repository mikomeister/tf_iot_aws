resource "aws_iam_role" "IoTcloudwatchMetricRole" {
  name = "iot_cloudwatchMetric_role"
  description = "IAM role for CloudWatch Metrics"
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
    tag-key = "IAM-CloudWatchMetrics"
  }
}
