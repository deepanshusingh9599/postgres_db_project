FROM python:3

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWEITEBYTECODE 1

COPY . .
RUN pip3 install -r requirements.txt

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
