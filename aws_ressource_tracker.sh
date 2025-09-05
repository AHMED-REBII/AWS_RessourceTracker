#!/bin/bash 

##################################
# Author: Ahmed Rebii
# Date: 5th-Sep
#
# version: v1
#
# This Script will report the aws ressource usage
###############################


set -x

# AWiS S3
# AWS EC2
# AWS lambda
# AWS IAM Users

# list s3 buckets 
echo " Print list of s3 buckets"  
aws s3 ls

# list EC2 instances
echo " Print list of ec2 buckets" 
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list AWS lambda
echo " Print list of lambda functions" 
aws lambda list-functions

# list IAM Users 
echo " Print list of IAM Users" 
aws iam list-users 

