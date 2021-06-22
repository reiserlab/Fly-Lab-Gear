

.PHONY: update run

run:
	@bundle exec jekyll serve --livereload --host=0.0.0.0

update:
	@gem update
	@bundle update