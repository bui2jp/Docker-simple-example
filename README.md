# Dockerfile, Docker Hub への公開

簡単なDockerfileの書き方
DockerHubへのPush

## Dockerfile
```
Dockerfile
docker-entrypoint.sh (bash)
```

## Build
tagをつけてビルドする。
test2020はDockerHubのユーザー名にする
```
% docker build . -t test2020/test:v1.0
```

## Login to Docker Hub
DockerHubのユーザでログインする
```
% docker login
```

## Push to Docker Hub
```
% docker push test2020/test:v1.0
```

