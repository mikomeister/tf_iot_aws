resource "aws_iot_policy" "PubSub" {
  name = "PubSubToAnyTopic"

  policy = <<EOF
{
 "Version": "2012-10-17",
   "Statement": [
{
       "Effect": "Allow",
       "Action": [
         "iot:Connect"
       ],
       "Resource": [
         "arn:aws:iot:${var.region}:${var.account_id}:client/${aws_iot_thing.thing_example.id}"
       ]
     },
     {
        "Effect": "Allow",
        "Action": [
          "iot:Publish"
        ],
        "Resource": [
          "arn:aws:iot:${var.region}:${var.account_id}:topic/Greenhouse/${aws_iot_thing.thing_example.id}"
      ]
    }
  ]
}
EOF
}
