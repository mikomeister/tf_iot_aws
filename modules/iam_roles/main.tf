resource "aws_iam_role" " role" {
  name = "aws_iot_cloudwatchMetric"
  description = "IAM role for CloudWatch Metrics"
  tags = {
    tag-key = "${var.name_prefix}-IAM-CloudWatchMetrics"
  }
}
