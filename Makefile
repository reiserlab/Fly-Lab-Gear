

.PHONY: update localhost

localhost:
	@bundle exec jekyll serve --livereload --host=0.0.0.0

update:
	@gem update
	@bundle update