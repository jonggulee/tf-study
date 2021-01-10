provider "aws" {
	region = "ap-northeast-2"
}

resource "aws_iam_user" "test_lee" {
	name = "test_lee"
}
