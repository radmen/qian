.PHONY: clear

all: run

build:
	node ./node_modules/electron/install.js
	./node_modules/.bin/webpack

run: build
	./node_modules/.bin/electron main.js


install:
	npm install

clean:
	rm -rf node_modules
	rm -rf elm-stuff
