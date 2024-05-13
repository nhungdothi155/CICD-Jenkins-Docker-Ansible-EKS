

#nginx labbels

{{- define "nginx.labels" }}
app: {{ .Values.labels.app}}
{{ end -}}

{{- define "nodeSelector.labels"}}
{{ .Values.nodeSelector.labelValue}}: {{ .Values.nodeSelector.labelValue}}
{{end -}}