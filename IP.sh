#!/bin/sh
IP=$(curl http://checkip.amazonaws.com)/32
echo $IP
aws ec2 authorize-security-group-ingress --group-id sg-f196ce8c --protocol tcp --port 80 --cidr $IP --region us-east-1
echo `curl http://sgtest-env.us-east-1.elasticbeanstalk.com/`