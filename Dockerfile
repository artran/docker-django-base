FROM artran/rdkit:base

MAINTAINER Ray Tran <ray@artran.co.uk>

ENV PYTHONUNBUFFERED 1

COPY requirements.txt /tmp
RUN pip install --upgrade pip && pip install -r /tmp/requirements.txt && pip install ipython
