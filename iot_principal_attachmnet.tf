resource "aws_iot_thing_principal_attachment" "att" {
  principal = "${aws_iot_certificate.cert.arn}"
  thing     = "${aws_iot_thing.example_thing.name}"
}