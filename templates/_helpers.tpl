{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{ define "gitlab.name" }}{{ default "gitlab" .Values.nameOverride | trunc 63 }}{{ end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this
(by the DNS naming spec).
*/}}
{{ define "gitlab.fullname" }}
{{- $name := default "gitlab" .Values.nameOverride -}}
{{ printf "%s-%s" .Release.Name $name | trunc 63 -}}
{{ end }}
