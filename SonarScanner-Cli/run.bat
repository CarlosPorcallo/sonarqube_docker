rem ###### Variables de entorno ######
set NETWORK="myplasticnetwork"
set DOCKER_IMG="sonarqube:community"
set CONTAINER_NAME="sonarqube-server"
set SONARQUBE_URL="<SONARQUBE_URL>"
set SONAR_TOKEN="<YOUR_PROJECT_KEY>"
set PROJECT_KEY="<YOUR_PROJECT_KEY>"
set REPO_PATH="<YOUR_REPO>"
rem ###### Variables de entorno ######

docker run \
    --rm \
    --name="sonarscanner-cli" \
    --network=%NETWORK% \
    -e SONAR_HOST_URL="http://%SONARQUBE_URL%" \
    -e SONAR_SCANNER_OPTS="-Dsonar.projectKey=%PROJECT_KEY%" \
    -e SONAR_TOKEN=%SONAR_TOKEN% \
    -v "%YOUR_REPO%:/usr/src" \
    %DOCKER_IMG%
