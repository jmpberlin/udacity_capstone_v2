FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/

RUN pip install pip==21.1.2 &&\
     pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]