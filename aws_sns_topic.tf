resource "aws_sns_topic" "Sunshades" {
  name = "Sunshades"
}

resource "aws_sns_sms_preferences" "SunshadesSmsPreferences" {
  monthly_spend_limit = "1"
}

resource "aws_sns_topic_subscription" "SunshadesSmsSubscription" {
  endpoint = "380955392871"
  protocol = "sms"
  topic_arn = "${aws_sns_topic.Sunshades.arn}"
}

resource "aws_sns_topic_subscription" "SunshadesLambsaSubscription" {
  endpoint = "${aws_lambda_function.LambdaSendResponse.arn}"
  protocol = "lambda"
  topic_arn = "${aws_sns_topic.Sunshades.arn}"
}
