FROM python:3.8-slim
RUN pip install mkdocs
WORKDIR /docs
COPY ./mkdocs.yml mkdocs.yml
COPY ./docs docs
EXPOSE 8080
CMD ["mkdocs", "serve"]
