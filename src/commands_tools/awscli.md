# Description: AWS CLI

### Commands Reference
```
pip install awscli              # Install AWS CLI in Python Virtual Environment.
pip install --upgrade awscli    # Upgrade to the latest AWS CLI version.
pip uninstall awscli            # Uninstall AWS CLI.

aws help                        # Get Help or Test the AWS CLI Installation
aws --version                   # Check version

aws ec2 describe-regions --output table # Get a list of regions. 

aws s3 ls                       # List all buckets.
aws s3 ls s3://bucket-name      # List all objects and folders (prefixes) in a bucket.
```

### Install and Configure AWS CLI
1. Create a python virtual environment.
2. Switch to python virtual environment.
3. Install AWS CLI with Upgrade Option
```bash
# Install
pip install --upgrade awscli

# Verify Installation
aws help
```
4. Configure AWS CLI
- Configurations are stored on the path ```~/.aws```
```bash
# Configure and following prompts
aws configure

# Verify if credentials are configured correctly.
aws ec2 describe-regions --output table
```
### Setup Cloudtrail
```bash

```


### Notes
- None
