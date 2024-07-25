# akeyless-workshop-1
Workshop 1: Deploy a Secure EKS Cluster with Terraform and Akeyless


## Zero Knowledge with Akeyless CLI

In case you are working with your own Fragment, please create an environment variable AKEYLESS_GATEWAY_URL to point your CLI to interact with the relevant Gateway e.g:

```bash
export AKEYLESS_GATEWAY_URL=https://192.168.1.82:8080
```

## Gateway with a Self-Signed Certificate

In case your Gateway using a self-signed certificate which is not trusted on your machine, set the environment variable AKEYLESS_TRUSTED_TLS_CERTIFICATE_FILE with your certificate pem file location.

```bash
export AKEYLESS_TRUSTED_TLS_CERTIFICATE_FILE=/home/sam/Development_Linux/customers/akeyless/akeyless-workshop-1/akeyless-gwy-cert.pem
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