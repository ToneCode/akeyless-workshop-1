# Environment Setup

## 1. Fork GitHub Repo

Go to this repo and fork it to your own GitHub account so you have full control over the CI/CD pipeline.

## 2. Start a Codespace

Start a GitHub Codespace on your forked repo.

## 3. Get AWS Access

Instructor to provide the `AKEYLESS_ACCESS_ID` and `AKEYLESS_ACCESS_KEY` credentials

Add these credentials in the `start.sh` script at the top then run the script:

```bash
./start.sh
```

The script will create your AWS credentials using Akeyless' Dynamic AWS Secrets. It will configure programmatic access (`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`) by writing to ~/.aws/credentials.

You can also see all the credentials including the ones that allow you to log into the AWS console at `/tmp/aws-credentials` which looks like this:

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

Finally, use the URL below to access the AWS Console:

```bash
https://047709130171.signin.aws.amazon.com/console/
```

your IAM user name is the same as the "id" above and your Password is the "password" above.

> You've reached the end of the lab.