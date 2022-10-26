FROM prefecthq/prefect:2.6.3-python3.10
COPY flows/*.py /modules/
COPY pyproject.toml .
COPY poetry.lock .
ENV PYTHONPATH=$PYTHONPATH:modules/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt