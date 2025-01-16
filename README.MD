# SonarQube - Docker

SonarQube Server y SonarScanner-Cli Dockerizados

## Getting Started

- Como dependencia se requiere tener instalado Docker:
- Se debe crear un archivo dotenv `.env` usando el template para cada contenedor

Una vez que se cumplen los requisitos se puede ejecutar el server:

```bash
/* Para el server SonarQube */
./build.sh
```

```bash
/* Para el SonarScanner */
./run.sh
```

Abrir [http://localhost:9000](http://localhost:9000) con el navegador web para acceder al servidor de SonarQube.