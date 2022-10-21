FROM prefecthq/prefect:2-python3.9
COPY flow/*.py /modules/
COPY pyproject.toml .
COPY poetry.lock .
ENV PYTHONPATH=$PYTHONPATH:modules/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt