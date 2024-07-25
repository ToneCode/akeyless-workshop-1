#!/usr/bin/bash
cat <<EOL > ~/Instructions.txt
This is the URL to the AWS Console.
https://047709130171.signin.aws.amazon.com/console/
EOL

akeyless configure --profile default --access-id ${AKEYLESS_ACCESS_ID} --access-key ${AKEYLESS_ACCESS_KEY}
