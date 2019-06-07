resource "aws_iot_thing" "example_thing" {
  name = "example_thing"

  attributes = {
    First = "examplevalue"
  }
}
