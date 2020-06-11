# pull official base image
FROM python:3.7.3-alpine
# set work directory
WORKDIR /usr/src/app
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# install dependencies
RUN pip install --upgrade pip
RUN pip install pipenv
COPY ./Pipfile /usr/src/app/Pipfile
RUN pipenv install --skip-lock --system --dev
# copy project
COPY . /usr/src/app/
# run development server
CMD python ./django_on_cloudrun/manage.py makemigrations
CMD python ./django_on_cloudrun/manage.py migrate
CMD python ./django_on_cloudrun/manage.py runserver 0.0.0.0:$PORT