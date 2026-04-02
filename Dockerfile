FROM python:3.10-slim-bookworm

WORKDIR /usr/src/Flaskproject

COPY . .
RUN pip install -r requirements.txt

EXPOSE 8083
CMD ["waitress-serve", "--host", "0.0.0.0", "--port", "8083", "app:app"]