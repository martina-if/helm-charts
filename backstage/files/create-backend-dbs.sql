create database {{ .Values.appConfig.backend.database.db }};
grant all privileges on database {{ .Values.appConfig.backend.database.db }} to {{ .Values.global.postgresql.postgresqlUsername }};

{{ if not (eq .Values.appConfig.backend.database.db .Values.lighthouse.database.db) }}
create database {{ .Values.lighthouse.database.db }};
grant all privileges on database {{ .Values.lighthouse.database.db }} to {{ .Values.global.postgresql.postgresqlUsername }};
{{ end }}