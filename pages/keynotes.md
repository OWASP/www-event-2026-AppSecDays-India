---

title: Keynote Speaker
layout: event_noheader
permalink: /program/keynotes/

---

# {{page.title}}
<br>
<div class="keynote-full">
{% for speaker in site.data.keynotespeakers %}
<hr>
		{% if speaker.name %}
		<div>
		    <a name="{{speaker.name}}"><img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="{{speaker.name}}" style="background-image: url(/assets/images/keynotes/{{speaker.image | default: 'owasp_logo.png'}});{{speaker.style}};"></a>
		</div>
		<div class='keynote-info'>
			<a><strong>{{speaker.name}}</strong></a>
			{% if speaker.linkedin %}
				&nbsp;<a href="{{ speaker.linkedin }}" target="_blank" rel="noopener noreferrer" aria-label="{{ speaker.name }} on LinkedIn"><i class="fab fa-linkedin"></i></a>
			{% endif %}
			<br>
			{{speaker.bio}}
			<br>
			{% if speaker.subject %}
				<strong>Talk:</strong> {{ speaker.subject}}
			{% endif %}
			<br>
			{% if speaker.abstract %}
				<strong>Abstract:</strong>{{ speaker.abstract }}
			{% endif %}
		</div>
		{% endif %}
{% endfor %}
</div>