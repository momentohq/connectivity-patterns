# AWS Private Link Integration with Momento

This guide outlines how to set up a VPC Endpoint for Momento using AWS Private Link in your AWS account. By deploying
this integration, you can securely connect to Momento services within your AWS environment, ensuring your data remains
private and protected.

For a detailed overview of AWS Private Link and its benefits with Momento, refer to
our [official documentation](https://docs.momentohq.com/platform/connectivity/private-link).

## Prerequisites

Before starting, ensure that:

- You have your AWS Account ID and preferred AWS Region handy.
- You have reached out to Momento support for Private Link access (see instructions below).

## Getting Started

1. **Request Access**  
   Email Momento Support at [support@momentohq.com](mailto:support@momentohq.com) with your **AWS Account ID** and *
   *Region** to be allow-listed for Private Link connectivity.

2. **Receive Service Details**  
   Once your account is approved, Momento Support will provide you with a `MomentoServiceName`. This value is required
   for creating and configuring your VPC Endpoint.

3. **Provision the VPC Endpoint**  
   You can use the example configurations provided to simplify the deployment:
    - **CloudFormation**: Use the [CloudFormation template](./template.yaml) to provision the VPC Endpoint within your
      AWS environment.
    - **Terraform**: Use the [Terraform configuration](./main.tf) if you prefer infrastructure-as-code with Terraform.

## Additional Resources

For further details on configuring and using AWS Private Link with Momento, please refer to
the [Momento documentation](https://docs.momentohq.com/cache/learn/security/private-link).
