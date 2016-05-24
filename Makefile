VERSION = "0.1"

all: publish

uninstall:
	@docker rmi thephilross/gem-libraries:$(VERSION)
	@docker rmi thephilross/gem-libraries:latest

build:
	@docker build -t thephilross/gem-libraries:$(VERSION) . \
	&& docker tag -f thephilross/gem-libraries:$(VERSION) thephilross/gem-libraries:latest

publish: build
	@docker push thephilross/gem-libraries:$(VERSION) \
	&& docker push thephilross/gem-libraries:latest

.PHONY: all uninstall build publish
