# SonarQube - Docker

[SonarQube Server](https://hub.docker.com/_/sonarqube) y [SonarScanner-Cli](https://hub.docker.com/r/sonarsource/sonar-scanner-cli) Dockerizados

## Getting Started

- Como dependencia se requiere tener instalado Docker:
- Para usuarios Linux / MacOS:
    * Se debe crear un archivo dotenv `.env` usando el template para cada contenedor
- Para usuarios Windows:
    * Se debe establecer el valor de cada variable requerida por los contenedores.
- Una vez que se cumplen los requisitos se puede ejecutar el server.
- Con el server corriendo configurar y ejecutar el agente Scanner-Cli.

Abrir [http://localhost:9000](http://localhost:9000) con el navegador web para acceder al servidor de SonarQube.