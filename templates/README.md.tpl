[![👋Hi there! I'm Hashim*](/assets/intro.gif "Go To hashim-ali.work")](https://hashim-ali.work)

### 📖 About Me
- 🌐 does web stuff mostly
- 🎨 can design stuff in figma
- 🐧 wannabe hardware guy

#### 👷‍♂️ Latest Contributions:
{{- range recentContributions 5 }}
- [{{ .Repo.Name }}]({{ .Repo.URL }}) - {{ .Repo.Description }} ({{ humanize .OccurredAt }})
{{- end }}

#### 🧑‍💻 Latest Pull Requests:
{{- range recentPullRequests 3 }}
- [{{ .Repo.Name }}: {{ .Title }}]({{ .URL }}) ({{ .State }}): {{ humanize .CreatedAt }}
{{- end }}

#### 📡 My All Time [Hackatime](https://hackatime.hackclub.com) Stats
```
{{- with hackatimeStats -}}
{{- wakatimeLanguages "💾 Languages:" .Data.Languages 5 .Data.HumanReadableTotal -}}
{{- end -}}
```
#### 📮 Want to Contact me? (I don't bite)
```
email: hashamvss@gmail.com
```
_readme auto updates on the hour via: [markscribe](https://github.com/hashim-cpro/markscribe)_
