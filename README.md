# docker-cookiecutter

Inpired on https://github.com/audreyfeldroy/docker-cookiecutter but using [Chainguard](https://www.chainguard.dev) images.

## GitHub CI
A GitHub Actions workflow (.github/workflows/docker-publish.yml) is included to build and push this image to GHCR.

# Usage

``` bash
# change to desired path
cd example
docker run -e LC_ALL=C.UTF-8 --rm -t -v $PWD:/srv/app -w /srv/app cookiecutter -v gh:audreyfeldroy/cookiecutter-pypackage --no-input --config-file val.yaml
```
