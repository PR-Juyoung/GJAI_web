FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/PR-Juyoung/GJAI_web_tea.git

WORKDIR /home/GJAI_web_tea/

RUN echo "SECRET_KEY='django-insecure-xcp6w5kf0_2=7lbfj2b%m!ckso23-%e10c^u7i*h%xs1_b(9d('" > .env

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN python manage.py migrate

EXPOSE 8000

CMD ["gunicorn", "GJAI_web_1.wsgi", "--bind", "0.0.0.0:8000"]