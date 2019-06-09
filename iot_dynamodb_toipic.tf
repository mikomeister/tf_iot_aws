resource "aws_iot_topic_rule" "DynamoDbRule" {
  enabled = true
  name = "dynamodbRule"
  sql = "SELECT * FROM '/topic/Greenhouse/LuxSensors/#'"
  sql_version = "2016-03-23"

  dynamodb {
    hash_key_field = "item"
    hash_key_value = "${aws_iot_thing.thing_example.name}"
    range_key_field = "timestamp"
    range_key_value = "${timestamp()}"
    role_arn = "${aws_iam_role.IoTDynamoDbRole.arn}"
    table_name = "Greenhouse_Lux_Sensor"
  }
}