# build image
docker build -t awscli .
# or no-cache
docker build --no-cache -t awscli .
# run image
docker run awscli /bin/sh -c "echo hello"
docker run awscli -e "AWS_ACCESS_KEY_ID=xxx" -e "AWS_SECRET_ACCESS_KEY=yyyy" /bin/sh -c "aws ecr get-login --region us-east-1"
# tag image
docker tag awscli:latest ntk1000/awscli:latest
# push image
docker push ntk1000/awscli
