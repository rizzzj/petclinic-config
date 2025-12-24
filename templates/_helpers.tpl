{{- define "petclinic.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}
