# WordPress Infrastructure Setup

This repository contains the infrastructure as code (IaC) used to deploy and host a WordPress site. The infrastructure is built using Azure resources and includes a Virtual Network (VNet), subnets, private endpoints, Redis Cache, scale sets, and storage for the WordPress site. Additionally, once the infrastructure is deployed, a script is run to download and install WordPress on the VMs.

## Table of Contents
- [Overview](#overview)
- [Infrastructure Components](#infrastructure-components)
- [Prerequisites](#prerequisites)
- [Deployment](#deployment)
- [Architecture](#architecture)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)
- [License](#license)

## Overview

This project automates the deployment of a WordPress hosting environment in Azure. It provisions a secure and scalable infrastructure, including networking, private endpoints, Redis Cache, scale sets, and storage, all designed to ensure the site is secure, scalable, and performant. A script is also executed after deployment to automatically install WordPress on the virtual machines.

## Infrastructure Components

1. **Virtual Network (VNet)**: 
   - A single VNet to securely connect all resources.
   
2. **Subnets**: 
   - Three subnets within the VNet:
     - **Web Subnet**: For the WordPress web server.
     - **Database Subnet**: For the database (if applicable).
     - **Management Subnet**: For management and monitoring resources.
   
3. **Private Endpoints**: 
   - Three private endpoints for secure access to resources:
     - **Azure Database for MySQL**: To secure database connections.
     - **Storage Account**: For storing website content, media, and backups.
     - **App Service** (if hosting WordPress on App Service): For web hosting via private connection.

4. **Redis Cache**: 
   - An Azure Redis Cache instance to improve WordPress performance by caching database queries and speeding up content delivery.

5. **Virtual Machine Scale Sets**: 
   - An Azure VM Scale Set is used to automatically scale the number of VMs based on traffic and load. This ensures the WordPress site remains highly available and can handle increased traffic.

6. **Storage**: 
   - A storage account to host media files, backups, and other WordPress-related content.

## Prerequisites

Before deploying this infrastructure, ensure you have the following:

- An active Azure subscription.
- Access to the Azure CLI or PowerShell.
- [Terraform](https://www.terraform.io/) installed (if using Terraform for IaC).
- Appropriate permissions to create networking and resource deployments in Azure.

