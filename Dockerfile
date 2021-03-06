FROM python:3.8.5

COPY requirements.txt .

RUN pip install pip --upgrade

RUN pip install -r requirements.txt && rm requirements.txt

COPY . .

CMD python3 src/main.py
