rem ###### Variables de entorno ######
set NETWORK="<NETWORK>"
set DOCKER_IMG="sonarqube:community"
set CONTAINER_NAME="sonarqube-server"
rem ###### Variables de entorno ######

docker network create %NETWORK%
docker container stop %CONTAINER_NAME% 
docker container rm %CONTAINER_NAME%
docker run -d ^
--name %CONTAINER_NAME% ^
-p 9000:9000 ^
--network=%NETWORK% ^
--mount type=bind,source=%cd%/SonarQube_data,target=/opt/sonarqube/data ^
--mount type=bind,source=%cd%/SonarQube_extensions,target=/opt/sonarqube/extensions ^
--mount type=bind,source=%cd%/SonarQube_logs,target=/opt/sonarqube/logs ^
%DOCKER_IMG%
