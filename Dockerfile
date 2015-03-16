FROM debian:wheezy
MAINTAINER Florian Ernst <florian_ernst@gmx.net>
RUN apt-get update && apt-get install -y uwsgi uwsgi-plugin-python python-psycopg2
EXPOSE 5000
COPY app /app/
ADD uwsgi.ini /etc/uwsgi/apps-enabled/
RUN rm /var/lib/apt/lists/*dists*
