# Akeyless Setup

## 1. Create a Gateway in Akeyless





## 2. Create a Target in Akeyless

You will need the AWS credentials you received in the beginning to create a target in Akeyless.


## 3. Create an AWS Dynamic Secret



```bash
akeyless dynamic-secret create aws \
--name /Terraform/terraform-credentials \
--target-name <Target Name> \
--gateway-url 'https://<Your-Akeyless-GW-URL:8000>' \
--aws-access-mode iam_user \
--aws-user-policies <Policy ARN> \
--aws-user-groups <UserGroup name> 
```

Now test this by fetching a dynamic AWS secret value using this command:

```bash
akeyless dynamic-secret get-value --name /Terraform/terraform-credentials
```


> You've reached the end of the lab.