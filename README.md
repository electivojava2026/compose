# EventPass: compose

Levanta los 4 microservicios, el frontend de demo y PostgreSQL con Docker Compose.

## Requisitos
Docker Desktop (motor corriendo), Git y una terminal bash (Git Bash en Windows; en PowerShell `./setup.sh` no funciona).

## Cómo ejecutarlo
    git clone https://github.com/electivojava2026/compose
    cd compose
    ./setup.sh                 # clona ms-auth, ms-eventos, ms-ordenes, ms-tickets y demo-frontend
    docker compose up --build  # la primera vez tarda unos minutos

| Servicio | URL |
|---|---|
| ms-auth | http://localhost:8081 |
| ms-eventos | http://localhost:8082 |
| ms-ordenes | http://localhost:8083 |
| ms-tickets | http://localhost:8084 |
| frontend | http://localhost:5173 |

Una sola instancia de PostgreSQL con una base por servicio (db_auth, db_eventos, db_ordenes, db_tickets).
Detener: `docker compose down` (con `-v` borra los datos).
