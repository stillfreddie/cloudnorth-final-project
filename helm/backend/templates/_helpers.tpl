{{- define "backend.fullname" -}}
{{ .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
