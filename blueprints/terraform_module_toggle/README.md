# README.md

## Advanced Terraform with AWS Series - Part 2: Introduction to Terraform Module Toggle

Welcome to the second part of the "Advanced Terraform with AWS" series. This installment delves into the intricacies of dynamically enabling and disabling Terraform modules, a key aspect of cloud resource management. Read my full blog for in-depth insights and practical applications: [Advanced Terraform with AWS - Part 2](https://chrisurf.com/blog/blog-terraform-advanced-part2)

### Overview

This section of the series explores the transformative power of Terraform module toggling, offering a powerful and flexible solution for a variety of complex cloud infrastructure scenarios. It enables precise control over which modules are activated in each environment using a single code base, revolutionizing the way resources are managed.

### Key Highlights

- **Dynamic Module Toggle**: Learn to leverage the nuanced control of activating or deactivating Terraform modules in different environments.
- **Creative Solutions**: Discover how this technique can be used for scenarios like security module toggling, managing multi-tier applications, and efficient disaster recovery.
- **Cost Management**: Understand how selectively disabling modules can lead to significant cost savings without sacrificing functionality.
- **Best Practices**: Aligning the approach with DRY (Don't Repeat Yourself) principles for streamlined and bespoke infrastructure management.

### Practical Examples

- **Module Configuration**: Detailed examples of child and parent modules, showcasing the implementation of conditional logic with Terraform's `for_each` and `var.enabled`.
- **Project Repository Implementation**: Real-world application of the `aws_subnets` module, demonstrating the dynamic configuration and management of subnets across Terraform Workspaces.
- **Enhanced Flexibility and Control**: Insights into the strategic use of the `local.project_condition` variable for adaptive infrastructure deployment.

### License

This content is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.