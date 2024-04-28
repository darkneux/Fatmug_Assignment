FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app


COPY ./VendorMetrics/requirements.txt /app/


RUN pip install --upgrade pip
RUN pip install -r requirements.txt


COPY ./VendorMetrics /app/

EXPOSE 8000

#CMD ["gunicorn", "VendorMetrics.wsgi:application", "--bind", "0.0.0.0:8000"]
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
