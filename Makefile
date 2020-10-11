target: open serve

.PHONY: build clean open serve target

serve:
	bundle exec jekyll serve --drafts

open:
	open http://127.0.0.1:4000/

build: _drafts/ _config.yml _posts/ assets/
	bundle exec jekyll build

clean:
	rm -rf _site/
