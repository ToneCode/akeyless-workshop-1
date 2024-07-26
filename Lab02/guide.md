# Akeyless Setup

## 0. Create an Akeyless Account

By going to https://akeyless.io and clicking on the Start Free button.

## 1. Create a Gateway in Akeyless

Run the following command after replacing `email_address_of_your_Akeyless_account` with your Akeyless account email address:

```bash
docker run -d -p 8000:8000 -p 8200:8200 -p 18888:18888 -p 8080:8080 -p 8081:8081 -p 5696:5696 -e ADMIN_ACCESS_ID="email_address_of_your_Akeyless_account" --name akeyless-gw akeyless/base
```

Check that the gateway is up and running

```bash
docker logs -f akeyless-gateway
```
Wait until the following line appears - "Gateway is up and running!" and press CTRL+C to exit log viewing mode

Login to the Gateway from your browser

You'll be able to configure TLS and other settings

http://<Gateway's hostname/IP>:8000




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