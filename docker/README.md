# Deploy ClickHouse with Docker

This simple example is a quick and easy way to incorporate ClickHouse into your local development environment.

Get started with a simple:

```
docker compose up -d
```

We can then connect to the container and run the clickhouse-client:
```
docker exec -it clickhouse clickhouse-client
```

We should see a welcome message like:
```
ClickHouse client version 23.8.11.29.altinitystable (altinity build).
Connecting to localhost:9000 as user default.
Connected to ClickHouse server version 23.8.11 revision 54465.
```

From here we can run any arbitrary SQL queries, for example, `SHOW databases;`:
```
44ab2c55c660 :) SHOW databases;

SHOW DATABASES

Query id: 09d490de-42fe-4871-9ab8-f713f3f6b72e

┌─name───────────────┐
│ INFORMATION_SCHEMA │
│ default            │
│ information_schema │
│ system             │
└────────────────────┘

4 rows in set. Elapsed: 0.003 sec.

```

Use `quit` or `exit` to exit the ClickHouse client and the docker container shell.

You can stop the database with:

```
docker compose stop
```

## Notes

This example will create a directory, `clickhouse_database`, on the local filesystem so that your database will persist across container restarts. You can delete this directory to destroy your database data and start with a fresh instance of ClickHouse.

This example binds the ClickHouse ports `8123` and `9000` on the host machine. If these ports are already bound the container will fail to start.

To access the ClickHouse container from other docker containers, you may need to use the special hostname `host.docker.internal` instead of `localhost`.
