```
docker login

docker build -t $DOCKER_ACC/$DOCKER_REPO:$IMG_TAG .

docker push $DOCKER_ACC/$DOCKER_REPO:$IMG_TAG
```