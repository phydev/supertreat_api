FROM python:3.10-slim-buster

MAINTAINER Mauricio Moreira Soares <m.m.soares@medisin.uio.no>

RUN mkdir /code
WORKDIR /code

# Set our app folder as a volume
VOLUME ["/code"]


# Check if we really need binutils libproj-dev gdal-bin
#RUN apt-get update && apt-get install -y build-essential libpq-dev libffi-dev libssl-dev libjpeg-dev zlib1g-dev binutils libproj-dev gdal-bin

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Install dependencies:
COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 5000

# Run the application:
COPY src/app.py .
COPY src/models.yml .
CMD ["python", "app.py"]
