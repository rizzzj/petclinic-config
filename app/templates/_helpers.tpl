{{- define "petclinic.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "petclinic.fullname" -}}
{{ .Release.Name }}
{{- end -}}

{{- define "petclinic.labels" -}}
app.kubernetes.io/name: {{ include "petclinic.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "petclinic.selectorLabels" -}}
app.kubernetes.io/name: {{ include "petclinic.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "petclinic.commonLabels" -}}
{{ include "petclinic.labels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
