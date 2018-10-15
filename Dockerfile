FROM python:2.7-slim-stretch

LABEL maintainer "Hewlett Packard Enterprise <github@hpe.com>"

RUN pip install hpOneView

CMD ["/bin/bash"]
