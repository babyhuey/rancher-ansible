# Oregon
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  region = "us-west-2"
}

# Northern California
provider "aws" {
  alias = "us-west-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  region = "us-west-1"
}

# Virginia
provider "aws" {
  alias = "us-east-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  region  = "us-east-1"
}

# Ireland
provider "aws" {
  alias = "eu-west-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  region = "eu-west-1"
}

# Frankfurt
provider "aws" {
  alias = "eu-central-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  region = "eu-central-1"
}

# Singapore
provider "aws" {
  alias = "ap-southeast-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  region = "ap-southeast-1"
}

# Sydney
provider "aws" {
  alias = "ap-southeast-2"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  region = "ap-southeast-2"
}

# Tokyo
provider "aws" {
  alias = "ap-northeast-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  region = "ap-northeast-1"
}

# Sao Paolo
provider "aws" {
  alias = "sa-east-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  region = "sa-east-1"
}
