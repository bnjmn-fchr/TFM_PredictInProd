FROM python:3.8.6-buster

COPY requirements.txt ./
COPY api ./
COPY TaxiFareModel ./
COPY model.joblib ./

RUN pip install --no-cache-dir -r requirements.txt

CMD uvicorn app.simple:app --host 0.0.0.0
