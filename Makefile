

audit:
	brew audit --new-formula templative

upload: 
	git add .
	git commit -m "Do the thing"
	git push origin master
	brew tap thenextguy32/homebrew-templative
	# brew audit --new-formula templative
	brew install templative

release: clear upload

install:
	brew tap thenextguy32/homebrew-templative
	brew install templative

logs:
	cp /Users/oliverbarnum/Library/Logs/Homebrew/templative/26.pip log

clear:
	sudo rm '/usr/local/bin/templative'
	brew uninstall templative

refresh: clear install

sniff: 
	pipenv install $(package)
	pipenv run pip show $(package)
	pipenv --rm 
	rm Pipfile
	rm Pipfile.lock
	