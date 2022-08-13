FROM python:3

RUN apt install -y python3-pip
RUN apt install django

COPY . .

RUN python3 manage.py migrate

EXPOSE 8000

CMD python3 manage.py runserver 0.0.0.0:8000
