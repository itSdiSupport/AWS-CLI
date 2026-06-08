# AWS-CLI Custom Launcher

A custom launcher designed to simplify and streamline AWS authentication workflows using Delinea. This launcher helps manage and automate authentication for:
- AWS Single Sign-On (SSO)
- IAM Role
- AWS Access Keys

# Features

#### 1. IAM Role Authentication
Supports temporary AWS credentials through:
- AWS STS role assumption
- EC2 instance profiles
- Container task roles

#### 2. IAM Access Key Authentication
Supports secure retrieval of AWS Access Keys stored in Delinea Secret Server.

#### 3. AWS IAM Identity Center (SSO)
Supports AWS CLI v2 SSO authentication for:
- Interactive user login
- Federated authentication
- Temporary credential retrieval
- Administrative access workflows

#### 4. Centralized Secret Management
Delinea Secret Server provides:
- Secure credential storage
- Secret retrieval
- Access control
- Audit logging
- Session visibility
# Pre-requisites
Before deployment, ensure the following requirements are met:
#### System Requirements
- Windows workstation or server
- AWS CLI v2 installed
- Network connectivity to AWS and Delinea Secret Server
##### Access Requirements
- Access to Delinea Secret Server
- Permissions to retrieve secrets
- Appropriate AWS IAM permissions
#### Secret Server Configuration
All launcher configurations and authentication mappings are managed within Delinea Secret Server, including:
- AWS Access Keys
- IAM Role configuration
- AWS SSO configuration
- Launcher mappings
- AWS CLI profile configuration
# Configuration Steps
1.	Obtain the required AWS CLI launcher files from the repository or implementation package provided by itSdi.
  - [Windows](https://github.com/itSdiSupport/AWS-CLI/raw/refs/heads/main/aws_cli_login_secretserver.exe)
  - [MacOS](https://github.com/itSdiSupport/AWS-CLI/raw/refs/heads/main/aws_cli_login_secretserver)
2.	Store the launcher executable and script files on the target endpoint in accordance with organizational standards.
3.	Configure the required [secret templates](https://github.com/itSdiSupport/AWS-CLI/blob/main/Secret%20Template%20%26%20Launchers.md#part-a---create-a-secret-template-iam-access-key--iam-role), [launchers](https://github.com/itSdiSupport/AWS-CLI/blob/main/Secret%20Template%20%26%20Launchers.md#part-b---create-a-secret-launcher), and [launcher mappings](https://github.com/itSdiSupport/AWS-CLI/blob/main/Secret%20Template%20&%20Launchers.md#part-c---mapping-of-launchers) within Delinea Secret Server.
4.	Create the required secrets of the following:
  - IAM Access Keys
  - IAM Roles
  - AWS IAM Identity Center (SSO)
  - Deliea API
5.	Assign the required permissions to the API or service account used for secret retrieval.
6.	Associate the configured secrets and launchers within Delinea Secret Server.
7.	Perform a validation test to confirm:
   - Successful launcher execution
   - AWS authentication functionality
   - Proper access and audit logging behavior

