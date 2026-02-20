{{- /* Generate chart name */ -}}
{{- define "node-express-hello-world.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "node-express-hello-world.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name (include "node-express-hello-world.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
