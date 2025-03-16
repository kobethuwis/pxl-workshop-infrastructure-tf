# PXL Workshop Infrastructure Terraform

## Overview
This is a repository containing all the related resources & infrastructures for setting up the dockerized-web-app.

## Features
- A dockerized-web-app module containing a basic terraform skeleton
- An s3 backend for your personal terraform stack
- Boot scripts & hardcoded local params to get started

## Prerequisites
Make sure your tf version is up to date and working correctly ("~> 1.9.6")
```sh
terraform --version
```

## Usage
Clone the repository:
```sh
git clone git@github.com:kobethuwis/pxl-workshop-infrastructure-tf.git
cd pxl-workshop-infrastructure-tf
```

Initialize the terraform repository:
```sh
cd deployment
terraform init
```

Check if your state file matches the current stack:
```sh
terraform plan
```

Make changes and deploy your stack.
```sh
terraform apply
```

Repeat the process until all resources are deployed correctly.
```sh
terraform apply
```

## Dependencies
- terraform
- aws
- awcc
- hashicorp/time

## License

This project is licensed under the MIT License and written by [kobethuwis](https://kobethuwis.com).
