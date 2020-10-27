build: _drafts/ _config.yml _posts/ assets/
	bundle exec jekyll build

.PHONY: build serve clean

serve:
	bundle exec jekyll serve --drafts

clean:
	rm -rf _site/
