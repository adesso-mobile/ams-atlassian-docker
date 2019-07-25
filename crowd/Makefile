.PHONY: build
build:
	docker build -t atlassian-crowd:latest .

.PHONY: upload
upload: build
	docker tag atlassian-crowd:latest amsitoperations/atlassian-crowd:latest
	docker push amsitoperations/atlassian-crowd:latest
