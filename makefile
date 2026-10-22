PLANTUML ?= plantuml

.PHONY: check-diagrams render-diagrams

check-diagrams:
	$(PLANTUML) -checkonly "docs/diagrams/c4/**.puml"

render-diagrams: check-diagrams
	$(PLANTUML) -tsvg "docs/diagrams/c4/**.puml"sscc