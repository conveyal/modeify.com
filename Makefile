
install:
	@gem install github-pages
	@npm install -g imageoptim-cli

serve:
	@jekyll serve \
		--force_polling \
		--watch \
		--drafts

optimize:
	@imageoptim \
		--image-alpha \
		--jpeg-mini \
		--quit \
		--directory img

push:
	@jekyll build
	@aws s3 sync _site s3://modeify.com --recursive
