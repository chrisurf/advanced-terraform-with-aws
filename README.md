# Advanced Terraform with AWS Series

Welcome to the GitHub repository for the Advanced Terraform with AWS series. This series is dedicated to exploring sophisticated techniques and best practices for using Terraform in conjunction with AWS services. The blog is available on [chrisurf.com/blog](https://chrisurf.com/blog).

## Overview

This repository contains code examples and detailed explanations for various advanced Terraform topics, focusing on leveraging AWS's robust cloud capabilities. From managing complex cloud infrastructures to implementing efficient state management strategies, these examples are designed to provide practical insights and enhance your Terraform skills in an AWS environment.

## Contents

[**Terraform Workspaces**](./blueprints/terraform_workspaces/README.md)

This provides a comprehensive guide on using Terraform workspaces for efficient state management in cloud infrastructure, emphasizing workspace-based separation of environments and dynamic configuration through structured naming and YAML/JSON files.

[**Terraform Module Toggle**](./blueprints/terraform_module_toggle/README.md)

This showcases an advanced Terraform solution for orchestrating AWS subnet creation with a parent-child module architecture, enabling precise control over subnet provisioning in different environments (development, staging, production) through conditional logic and toggles for streamlined cloud resource management.

[**Single Source of Truth**](./blueprints/single_source_of_truth/README.md)

This presents a sophisticated solution using AWS Systems Manager Parameter Store as a centralized platform for managing Terraform state attributes, enhancing scalability, maintainability, and oversight in complex cloud infrastructures, with secure and efficient handling of sensitive configuration data.

Each directory contains specific README files with more detailed instructions and explanations.

## Getting Started

To get started, clone this repository to your local machine:

```bash
git clone https://github.com/chrisurf/advanced-terraform-with-aws
```

Navigate to the individual directories to access the specific Terraform modules and scripts.

## Prerequisites

- An AWS account
- Terraform installed on your machine
- Basic knowledge of Terraform and AWS

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
