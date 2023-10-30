FROM python:3.8

RUN pip3 install pipenv

ENV PROJECT_DIR /Users/Tara/Documents/Code/backend-2

WORKDIR ${PROJECT_DIR}

COPY Pipfile .
COPY Pipfile.lock .
COPY . .

RUN pipenv install --deploy --ignore-pipfile

EXPOSE 8356

CMD ["pipenv", "run", "python", "api.py"]