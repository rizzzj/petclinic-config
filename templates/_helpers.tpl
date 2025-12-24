{{- /*
Return the name of the chart
*/ -}}
{{- define "petclinic.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- /*
Return the full name of the release + chart
*/ -}}
{{- define "petclinic.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- /*
Common labels for all resources
*/ -}}
{{- define "petclinic.labels" -}}
app.kubernetes.io/name: {{ include "petclinic.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
