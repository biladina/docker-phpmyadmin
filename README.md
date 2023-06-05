- copy variables.env.example to variables.env and adjust your configuration

- docker for production :
```
docker compose -f docker-compose.yml -f docker-compose-prod.yml build --no-cache && docker compose -f docker-compose.yml -f docker-compose-prod.yml up -d
```

- docker for development
```
docker compose -f docker-compose.yml -f docker-compose-dev.yml build --no-cache && docker compose -f docker-compose.yml -f docker-compose-dev.yml up -d
```

- docker for local development
```
docker compose -f docker-compose.yml -f docker-compose-local.yml build --no-cache && docker compose -f docker-compose.yml -f docker-compose-local.yml up -d
```

- run this to create phpmyadmin alias (if you use subfolder path)
```
./apache_fix.sh container_name phpmyadmin_path_alias
```

- you can run at local domain or localhost:port (eg. 127.0.0.1:8110)