


## Requirements

1. **Terraform State File**:
   - Store the Terraform state file in an S3 bucket.
   - Bucket name: `byry-bucket`
   - Specify a unique key for the state file.

2. **S3 Bucket**:
   - Create a general-purpose S3 bucket.
   - Add a directory named `logs` in the bucket.

3. **IAM Role**:
   - Create an IAM Role with full S3 access using an AWS-managed policy.
   - Attach this role to the EC2 instance.

4. **EC2 Instance**:
   - Launch an EC2 instance with the IAM Role attached.

5. **Testing**:
    - SSH into the EC2 instance.
   - Use AWS CLI to upload a file to the S3 bucket:
     ```bash
     aws s3 cp <file_path> s3://<bucket_name>/logs/
     ```

