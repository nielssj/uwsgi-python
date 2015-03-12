FROM debian:wheezy
MAINTAINER Florian Ernst <florian_ernst@gmx.net>
RUN apt-get update && apt-get install -y uwsgi uwsgi-plugin-python python-psycopg2
EXPOSE 5000
ADD app /
ADD uwsgi.ini /etc/uwsgi/apps-enabled/
ADD sources.list /etc/apt/
ADD resolv.conf /etc/
RUN rm /var/lib/apt/lists/*dists*
