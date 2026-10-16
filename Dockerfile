FROM squidfunk/mkdocs-material:9.6.20

WORKDIR /docs

EXPOSE 8000

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
