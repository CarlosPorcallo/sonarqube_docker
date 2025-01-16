source .env
docker run \
    --rm \
    --name="sonarscanner-cli" \
    --network=${NETWORK} \
    -e SONAR_HOST_URL="http://${SONARQUBE_URL}" \
    -e SONAR_SCANNER_OPTS="-Dsonar.projectKey=${YOUR_PROJECT_KEY}" \
    -e SONAR_TOKEN=${YOUR_PROJECT_KEY} \
    -v "${YOUR_REPO}:/usr/src" \
    ${DOCKER_IMG}
