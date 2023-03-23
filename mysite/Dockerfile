FROM python:3.8
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
RUN mezzanine-project fxy_website
RUN cd fxy_website
RUN python manage.py createdb --noinput
RUN python manage.py collectstatic
RUN python manage.py collecttemplates
COPY . /code/

