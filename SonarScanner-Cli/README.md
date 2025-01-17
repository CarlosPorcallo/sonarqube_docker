# SonarScanner-Cli - Docker

[`SonarScannerCli`](https://docs.sonarsource.com/sonarqube/latest/analyzing-source-code/scanners/sonarscanner/) soportado por [`Docker`](https://www.docker.com)

## Requirements

- Docker
- Servidor SonarQube en ejecución

## Getting Started

1.- Establecer las variables de entorno requeridas por el proyecto.
- Para usuarios Linux / MacOS:
    * Crear un archivo `.env` desde el template. 
- Para usuarios Windows:
    * Establecer el valor de las <variables> correspondientes en el archivo .bat correspondiente.

Algunos de los datos requeridos son:
+ SONARQUBE_URL.- La url/ip del servidor SonarQube, para obtenerla desde Docker ejecutar un inspect al contenedor correspondiente:

```bash
docker inspect <sonarqube-server>
```

+ SONAR_TOKEN.- Token de acceso creado desde SonarQube.
+ PROJECT_KEY.- Nombre del proyecto (sin espacios en blanco)
+ REPO_PATH.- La ruta hacia el proyecto a escanear.

2.- Crear un archivo `sonar-project.properties` desde el template y guardarlo en el proyecto a escanear.

## Run a Scan

- Para usuarios Linux / MacOS:
    * Ejecutar el scan con el script `run.sh`:

```bash
    ./run.sh
```
- Para usuarios Windows:
    * Ejecutar el scan con el script `run.bat`:
```bash
    ./run.bat
```
- Una vez finalizado el reporte visualizar los resultados en el servidor SonarQube.
