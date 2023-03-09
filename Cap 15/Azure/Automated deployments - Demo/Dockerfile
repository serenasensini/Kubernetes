FROM python:3.8-slim-buster

LABEL maintainer="serena.sensini@gmail.com"

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT ["python"]

CMD ["-m" , "flask", "run", "--host=0.0.0.0"]