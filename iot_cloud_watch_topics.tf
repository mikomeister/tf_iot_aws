resource "aws_iot_topic_rule" "ShadePosition" {
  name        = "ShadePosition"
  description = "Sends telemetry above 35,000 lux to CloudWatch to generate an alert"
  enabled     = true
  sql         = "SELECT * FROM '/topic/Greenhouse/LuxSensors' WHERE lux > 35000"
  sql_version = "2016-03-23"

  cloudwatch_metric {
    metric_unit = "Count"
    metric_name = "ShadePosition"
    metric_namespace = "Greenhouse Lux Sensors"
    metric_value = "1"
    role_arn = "${aws_iam_role.IoTcloudwatchMetricRole.arn}"
  }
}

resource "aws_iot_topic_rule" "NotTooBright" {
  enabled = true
  name = "NotTooBright"
  sql = "SELECT * FROM '/topic/Greenhouse/LuxSensors' WHERE lux < 35000"
  sql_version = "2016-03-23"

  cloudwatch_metric {
    metric_name = "ShadePosition"
    metric_namespace = "Greenhouse Lux Sensors"
    metric_unit = "Count"
    metric_value = "0"
    role_arn = "${aws_iam_role.IoTcloudwatchMetricRole.arn}"
  }
}