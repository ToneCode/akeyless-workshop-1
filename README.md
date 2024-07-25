# Overview
Workshop 1: Deploy a Secure EKS Cluster with Terraform and Akeyless

## Instructions

### Fork Repo

Fork this repo so you have full control over the CI/CD pipeline.

### Get AWS Credentials

This is the URL to the AWS Console.
https://047709130171.signin.aws.amazon.com/console/

Participants will need to run these commands to access Akeyless to retrieve dynamic secrets for AWS.

Sam to provide the `AKEYLESS_ACCESS_ID` and `AKEYLESS_ACCESS_KEY`

Run the following script after filling in:



```bash
./start.sh
```


## Get Dynamic AWS Credentials

```bash
akeyless dynamic-secret get-value -n /Clouds/Workshops/AWS_Lab0
```

Need to give this URL to access the AWS Console:

```
https://047709130171.signin.aws.amazon.com/console/
```

Output:
```json
{
  "access_key_id": "xxx",
  "id": "tmp.p-hoz17m5u765ram.J7L87",
  "password": "xxx",
  "secret_access_key": "xxx",
  "ttl_in_minutes": "180",
  "type": "aws_dynamic_user",
  "user": "tmp.p-hoz17m5u765ram.J7L87"
}
```