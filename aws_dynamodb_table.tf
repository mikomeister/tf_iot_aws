resource "aws_dynamodb_table" "Greenhouse_Lux_Sensor" {
  "attribute" {
    name = "item"
    type = "S"
  }
  "attribute" {
    name = "timestamp"
    type = "S"
  }
  hash_key = "item"
  range_key = "timestamp"
  name = "Greenhouse_Lux_Sensor"
  read_capacity  = 1
  write_capacity = 1
}