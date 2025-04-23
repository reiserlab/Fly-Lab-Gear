.PHONY: update-dependencies localhost

localhost:
	@bundle exec jekyll serve --livereload --host=0.0.0.0 --open-url

update-dependencies:
	@gem update
	@bundle update
