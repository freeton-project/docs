build:
	docker build . -t freeton/docs

run: build
	docker run -p 8080:8080 freeton/docs

dev: build
	docker run -v docs:/docs/docs -p 8080:8080 freeton/docs

release: build
	docker push freeton/docs
