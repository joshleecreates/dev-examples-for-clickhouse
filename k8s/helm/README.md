# Simple Helm Example for ClickHouse

This simple example shows the bare minimum required to deploy the Altinity Operator
and create a ClickHouse cluster with Helm.

To get started:

```
helm install clickhouse . --namespace=clickhouse --create-namespace
```

We should see the following output:

```
NAME: clickhouse
LAST DEPLOYED: Mon Aug  5 13:52:53 2024
NAMESPACE: clickhouse
STATUS: deployed
REVISION: 1
TEST SUITE: None
```

We can then connect to the ClickHouse instance using kubectl:

```
kubectl exec -n clickhouse -it chi-simple-simple-0-0-0 -- clickhouse-client
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
