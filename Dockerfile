FROM cgr.dev/chainguard/python:latest-dev

ENV LANG=C.UTF-8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENV PATH="/cookiecutter/venv/bin:$PATH"

WORKDIR /cookiecutter
RUN python -m venv /cookiecutter/venv
RUN python -m pip install cookiecutter

ENTRYPOINT [ "python", "-m", "cookiecutter" ]
