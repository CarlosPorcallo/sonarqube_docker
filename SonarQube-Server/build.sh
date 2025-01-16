source .env
docker container stop sonarqube-server 
docker container rm sonarqube-server 
docker run -d \
--name sonarqube-server \
-p 9000:9000 \
--network=${NETWORK} \
--mount type=bind,source=./SonarQube_data,target=/opt/sonarqube/data \
--mount type=bind,source=./SonarQube_extensions,target=/opt/sonarqube/extensions \
--mount type=bind,source=./SonarQube_logs,target=/opt/sonarqube/logs \
${DOCKER_IMG}
