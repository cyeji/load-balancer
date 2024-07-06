# bin/bash
docker stop load-balancer1 || true
docker stop load-balancer2 || true
docker stop load-balancer3 || true
docker rm load-balancer1 || true
docker rm load-balancer2 || true
docker rm load-balancer3 || true
docker rmi load-balancer || true
./gradlew clean bootBuildImage --imageName=load-balancer

# bin/bash
docker run -p 8000:8080 --env JAVA_OPTS='-Dspring.profiles.active=server1 -Dfile.encoding=UTF-8 -Xmx2048m -XX:MaxMetaspaceSize=1024m' -d --name load-balancer1 load-balancer || true
docker run -p 8001:8080 --env JAVA_OPTS='-Dspring.profiles.active=server2 -Dfile.encoding=UTF-8 -Xmx2048m -XX:MaxMetaspaceSize=1024m' -d --name load-balancer2 load-balancer || true
docker run -p 8002:8080 --env JAVA_OPTS='-Dspring.profiles.active=server3 -Dfile.encoding=UTF-8 -Xmx2048m -XX:MaxMetaspaceSize=1024m' -d --name load-balancer3 load-balancer || true
