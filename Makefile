.PHONY: update serve-ruby serve

serve-ruby:
	@bundle exec jekyll serve --livereload --host=0.0.0.0 --open-url

serve:
	@podman build -t fly-lab-gear-jekyll -f Containerfile .
	@podman run --rm -it \
		--userns=keep-id \
		-v "$$PWD":/srv/jekyll:Z \
		-p 4000:4000 \
		fly-lab-gear-jekyll

update:
	@gem update
	@bundle update
