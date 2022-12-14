FROM python:3

#RUN apt install -y python3-pip
RUN pip install django

COPY . .

RUN python3 manage.py migrate

EXPOSE 8001

CMD python3 manage.py runserver 0.0.0.0:8001
