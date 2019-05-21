
NAME = madharjan/madharjan.github.io
UPDATED = $(shell date)

DEBUG ?= true

## config
SITE = _site

.PHONY: all build run test clean install

all: build

build:
	jekyll build --destination $(SITE)

run:
	jekyll serve --destination $(SITE) --watch

test:

clean: 
	jekyll clean

install:
	sudo gem update --system
	sudo gem install bundler
	bundler update --bundler

