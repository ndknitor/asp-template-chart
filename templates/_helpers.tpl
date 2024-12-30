{{/*
Generate the fullname using the release name and chart name
*/}}
{{- define "asp-template-chart.fullname" -}}
{{- if .Values.fullnameOverride }}
{{ .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Generate the chart name
*/}}
{{- define "asp-template-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride }}
{{- end }}

