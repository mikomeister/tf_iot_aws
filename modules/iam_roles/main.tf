resource "aws_iam_role" " role" {
  name = "aws_iot_cloudwatchMetric"
  description = "IAM role for CloudWatch Metrics"
  tags = {
    tag-key = "IAM-CloudWatchMetrics"
  }
}
