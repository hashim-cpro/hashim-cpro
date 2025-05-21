# Hi there, I'm {{ .User.Name }}! 👋

I'm a passionate developer focusing on awesome projects.

---

## My Latest Projects:

{{- range recentRepos 5 }}
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

---

## My Latest Blog Posts (from an RSS feed):

{{- range rss "https://your-blog-url.com/feed.xml" 3 }}
- [{{ .Title }}]({{ .URL }}) (Published: {{ humanize .PublishedAt }})
{{- end }}

---

_This README is automatically generated using [markscribe](https://github.com/muesli/markscribe). Last updated: {{ now | humanize }}_