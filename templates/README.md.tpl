# Hi there, I'm {{ .User.Name }}! 👋

I'm a passionate developer focusing on awesome projects.

---

## My Latest Projects:

{{- range recentCreatedRepos "hashim-cpro" 5 }}
- **{{ .Name }}**
  * Description: {{ .Description }}
  * Stars: {{ .Stargazers }} ⭐
  * URL: {{ .URL }}
{{- end }}

---

## Recent Activity:

### Latest Contributions:
{{- range recentContributions 5 }}
- [{{ .Repo.Name }}]({{ .Repo.URL }}) - {{ .Repo.Description }} ({{ humanize .OccurredAt }})
{{- end }}

### Latest Pull Requests:
{{- range recentPullRequests 3 }}
- [{{ .Repo.Name }}: {{ .Title }}]({{ .URL }}) ({{ .State }}): {{ humanize .CreatedAt }}
{{- end }}

### My WakaTime Stats
{{ wakatimeDoubleCategoryBar "💾 Languages:" wakatimeData.Languages "💼 Projects:" wakatimeData.Projects 5 }}



_This README is automatically generated using [markscribe](https://github.com/muesli/markscribe). Last updated: {{ now | humanize }}_