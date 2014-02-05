build:
	@mkdir -p dist/jpm
	@mkdir -p dist/css
	@mkdir -p dist/img
	@cp -r jpmorgan/*.html dist/jpm/
	@cp -r css/ dist/css 
	@cp -r img/ dist/img
