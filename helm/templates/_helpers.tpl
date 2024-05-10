

#nginx labbels

{{- define "nginx.labels" }}
app: {{ .Values.labels.app}}
env: {{ .Values.labels.env}}
{{ end -}}