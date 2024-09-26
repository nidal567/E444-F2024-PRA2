FROM python:3.11-slim

WORKDIR /hello
COPY . /hello
RUN pip3 install --no-cache-dir -r requirements.txt

ENV FLASK_APP hello.py
EXPOSE 5000

# run flask when container launches
CMD ["flask", "run", "--host=0.0.0.0"]