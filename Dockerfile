FROM python:3.4

RUN pip install -q -U devpi-server

EXPOSE 3141

ENTRYPOINT devpi-server
CMD ["--start", "--init"]