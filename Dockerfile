FROM artran/rdkit:base

MAINTAINER Ray Tran <ray@artran.co.uk>

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /app/itracker

WORKDIR /app/itracker

COPY requirements.txt /app/itracker/
RUN pip install --upgrade pip && pip install -r requirements.txt && pip install ipython
