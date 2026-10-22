.PHONY: check-diagrams render-diagrams

check-diagrams:
	plantuml -checkonly "docs/diagrams/c4/**.puml"

render-diagrams: check-diagrams
	plantuml -tsvg "docs/diagrams/c4/**.puml"