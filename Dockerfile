FROM squidfunk/mkdocs-material:9.6.20

WORKDIR /docs

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY mkdocs.yml .
COPY docs/ docs/

EXPOSE 8000

CMD ["serve", "--dev-addr=0.0.0.0:8000"]