FROM python:3.8-slim
ENV PYTHONUNBUFFERED=1
#disable for production build
ENV FLASK_DEBUG=0
RUN mkdir /var/www
WORKDIR /var/www
COPY requirements.txt .
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
COPY app.py .
RUN python3 -m pip install -r requirements.txt
ENTRYPOINT ["/entrypoint.sh"]

