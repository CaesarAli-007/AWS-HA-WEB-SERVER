# AWS High Availability Web Server with AWS EC2 Auto Scaling
This project demonstrates the deployment of a Highly Available Web Server architecture using AWS EC2 Auto Scaling and Elastic Load Balancer.

## Overview

This repository contains the infrastructure and configuration files for deploying a highly available web server architecture on AWS using EC2 Auto Scaling, Elastic Load Balancer (ELB), and CloudWatch for monitoring. The setup ensures optimal performance, cost efficiency, and fault tolerance.

## Features

- Elastic Load Balancer (ELB): Distributes traffic across multiple EC2 instances.

- EC2 Auto Scaling: Ensures high availability by dynamically adjusting the number of instances.

- AWS CloudWatch: Proactive monitoring and alerting for performance optimization.

- EC2 Spot Instances: Cost-effective strategy reducing operational costs by up to 29%.

- Terraform & CloudFormation: Infrastructure as Code (IaC) for seamless deployment.

## Prerequisites

- AWS Account

- Terraform Installed (>=1.0.0)

- AWS CLI Configured

- IAM Permissions for EC2, Auto Scaling, ELB, and CloudWatch

## Deployment

1. Deploy using Terraform

cd infrastructure/terraform

terraform init

terraform apply -auto-approve

2. Deploy using CloudFormation

aws cloudformation create-stack --stack-name HighAvailabilityStack --template-body file://infrastructure/cloudformation/high-availability.yaml --capabilities CAPABILITY_NAMED_IAM

## Monitoring & Scaling

- Check CloudWatch for metrics: CPUUtilization, RequestCount, etc.

- Modify Auto Scaling policies as needed.

- View logs in AWS CloudWatch Logs.

# Cost Optimization Strategy
To ensure cost-effectiveness while maintaining high availability, the following strategies are implemented:

## 1. Use of EC2 Spot Instances

- Spot Instances are used for non-critical workloads to reduce costs by up to 90% compared to On-Demand instances.

- Auto Scaling groups are configured to prioritize Spot Instances while falling back to On-Demand instances when needed.

## 2. Right-Sizing Instances

- Instances are selected based on workload demands using AWS Compute Optimizer.

- Regularly review instance types and sizes to balance cost and performance.

## 3. Load Balancer Optimization

- Elastic Load Balancer (ELB) distributes traffic efficiently, preventing over-provisioning of EC2 instances.

- Use of Application Load Balancer (ALB) for layer-7 routing to optimize request handling.

## 4. Auto Scaling Policies

- Auto Scaling is configured to scale based on real-time demand, ensuring that instances are added or removed dynamically.

- Scale-down policies remove underutilized instances during low-traffic periods to save costs.

## 5. CloudWatch Monitoring and Alerts

- Custom CloudWatch alarms trigger actions to optimize cost based on utilization.

- Unused resources are identified and terminated automatically.

## 6. Reserved Instances & Savings Plans

- For predictable workloads, Reserved Instances or Savings Plans are used to get discounts compared to On-Demand pricing.

- A combination of 1-year and 3-year commitments ensures long-term cost savings.

## 7. S3 Storage Optimization

- Logs and static assets are stored in Amazon S3 with lifecycle policies to move data to lower-cost storage classes (e.g., S3 Glacier).

- Compression and deduplication techniques minimize storage costs.

## 8. Serverless and Containerization Considerations

- Where applicable, AWS Lambda or Fargate is used to reduce infrastructure costs by leveraging pay-as-you-go pricing.

- Containers are deployed using ECS or EKS to improve resource utilization.

# Contributors
Ali H. Mughal (AWS Solutions Architect – Associate)
