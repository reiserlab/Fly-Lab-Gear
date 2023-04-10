

.PHONY: update-dependencies localhost

localhost:
	@echo "Starting Jekyll, will try to open browser in 10 seconds"
	@( sleep 10 && xdg-open http://127.0.0.1:4000 &)
	@bundle exec jekyll serve --livereload --host=0.0.0.0

update-dependencies:
	@gem update
	@bundle update
