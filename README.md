# Usage
## 0. prepare credentials file to `.aws` directory
and prepare ssh key to `.ssh` directory if you need ssh key 

## 1. start docker & execute bash on docker
```
$ docker-compose build
$ docker-compose up -d
$ docker-compose exec aws bash
```

## 2. execute aws command on docker
### examples
- awslogs

```
# awslogs groups
# awslogs get -w *****
```

- awsebcli
before, write docker-compose.yml volume section and mount project 

```
# cd path/to/project
# eb deploy
# eb ssh
```

- awscli

```
# $(aws ecr get-login --no-include-email --region ap-northeast-1)
```