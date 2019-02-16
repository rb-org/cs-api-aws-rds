# Terraform - CS API - AWS RDS

## Build Status

| Branch | Status |
|:---:|:---:|
| master | [![CircleCI](https://circleci.com/gh/rb-org/cs-api-aws-rds/tree/master.svg?style=svg&circle-token=d40cf6b446c959025fab14dbdcb64981dff37604)](https://circleci.com/gh/rb-org/cs-api-aws-rds/tree/master) |
| test |  [![CircleCI](https://circleci.com/gh/rb-org/cs-api-aws-rds/tree/uat.svg?style=svg&circle-token=d40cf6b446c959025fab14dbdcb64981dff37604)](https://circleci.com/gh/rb-org/cs-api-aws-rds/tree/uat) |
| dev | [![CircleCI](https://circleci.com/gh/rb-org/cs-api-aws-rds/tree/dev.svg?style=svg&circle-token=d40cf6b446c959025fab14dbdcb64981dff37604)](https://circleci.com/gh/rb-org/cs-api-aws-rds/tree/dev)  |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| mysql\_rds\_password |  | string | n/a | yes |
| account\_id | AWS Account ID | string | `""` | no |
| create\_ssm\_service\_role | SSM | string | `"false"` | no |
| default\_tags | Map of default tags applied to all resources | map | `<map>` | no |
| mssql\_log\_exports | Valid values  agent, dump, error, trace | list | `<list>` | no |
| mysql\_log\_exports | Valid values audit, error, general, slowquery | list | `<list>` | no |
| region | AWS Region | string | `"eu-west-1"` | no |
| remote\_state\_s3 |  | string | `"xyz-tfm-state"` | no |