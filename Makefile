.PHONY: build
build: _drafts/ _config.yml _posts/ assets/
	bundle exec jekyll build

.PHONY: serve
serve:
	bundle exec jekyll serve --drafts

.PHONY: clean
clean:
	rm -rf _site/
