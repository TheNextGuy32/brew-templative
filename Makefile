refresh:
	sudo rm -rf /usr/local/bin/templative
	brew tap thenextguy32/homebrew-templative
	brew install templative

audit:
	brew audit --new-formula templative

release:
	sudo rm '/usr/local/bin/templative'
	git add .
	git commit -m "Do the thing"
	git push origin master
	brew tap thenextguy32/homebrew-templative
	brew audit --new-formula templative
	brew install templative