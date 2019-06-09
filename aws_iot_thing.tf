resource "aws_iot_thing" "thing_example" {
  name = "thing_example"
  attributes = {
    First = "examplevalue"
  }
}
