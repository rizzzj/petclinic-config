{{- /*
Return the name of the chart
*/ -}}
{{- define "petclinic.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "petclinic.fullname" -}}
{{ printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}


{{- /*
Common labels for all resources
*/ -}}
{{- define "petclinic.labels" -}}
app.kubernetes.io/name: {{ include "petclinic.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
