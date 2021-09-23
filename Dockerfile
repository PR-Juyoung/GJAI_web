FROM python:3.9.0

WORKDIR /home/

RUN echo 'asdfghjklqwer'

RUN git clone https://github.com/PR-Juyoung/GJAI_web_tea.git

WORKDIR /home/GJAI_web_tea/

RUN echo "SECRET_KEY='django-insecure-xcp6w5kf0_2=7lbfj2b%m!ckso23-%e10c^u7i*h%xs1_b(9d('" > .env

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=GJAI_web_1.settings.deploy && python manage.py migrate --settings=GJAI_web_1.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=GJAI_web_1.settings.deploy GJAI_web_1.wsgi --bind 0.0.0.0:8000"]

