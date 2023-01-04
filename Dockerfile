FROM python:3
RUN pip3 install django
COPY . .
RUN pip3 install psycopg2-binary
RUN python3 manage.py makemigrations
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
