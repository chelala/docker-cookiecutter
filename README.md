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

For macos in arm add `--platform linux/amd64` to the docker run command if you which to use the image published to Github Registry by the CI with Github Actions.

``` bash
cd example
docker run --platform linux/amd64 -e LC_ALL=C.UTF-8 --rm -t -v $PWD:/srv/app -w /srv/app ghcr.io/chelala/docker-cookiecutter/cookiecutter:v0.1.0 -v gh:audreyfeldroy/cookiecutter-pypackage --config-file val.yaml --no-input
```