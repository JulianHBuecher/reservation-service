# Flyway Concept

Das zugrundeliegende Konzept von Flyway besteht darin eine versionierte Verwaltung und Migration von Datenbanken-Schemata anzubieten.

Dabei geht Flyway nach folgendem Schema vor:

```txt
deployments/flyway
├── migrations
│   └── 1_schema.sql
```

Hierbei spielt der Präfix der einzelnen Dateien eine wichtige Rolle. Dateien beginnend mit einer kleineren Nummer werden zuerst ausgeführt ff.

