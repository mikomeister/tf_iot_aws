resource "aws_iot_thing_principal_attachment" "ThingAttachment" {
  principal = "${aws_iot_certificate.cert.arn}"
  thing     = "${aws_iot_thing.example_thing.name}"
}
resource "aws_iot_policy_attachment" "PolicyAttachment" {
  policy = "${aws_iot_policy.PubSub.name}"
  target = "${aws_iot_certificate.cert.arn}"
}