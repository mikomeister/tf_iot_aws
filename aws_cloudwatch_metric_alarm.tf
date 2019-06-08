resource "aws_cloudwatch_metric_alarm" "TriggerSunShadeOpen" {
  alarm_name = "Trigger_SunShade_Open"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods = 3
  metric_name = "ShadePosition"
  namespace = "Greenhouse Lux Sensors"
  period = 60
  threshold = 1.0
  statistic = "Sum"
  actions_enabled = "true"
  alarm_actions = ["${aws_sns_topic.Sunshades.arn}"]
}

resource "aws_cloudwatch_metric_alarm" "Trigger_SunShade_Close" {
  alarm_name = "Trigger_SunShade_Close"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods = 3
  metric_name = "ShadePosition"
  namespace = "Greenhouse Lux Sensors"
  period = 60
  threshold = 0
  statistic = "Sum"
  actions_enabled = "true"
  alarm_actions = ["${aws_sns_topic.Sunshades.arn}"]
}