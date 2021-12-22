# NPM + GitHub Actions + Docker error reproduction

The purpose of this repo is to try to reproduce a minimal example of an issue I'm seeing with NPM failing on ubuntu's docker image, but exclusively on GitHub Actions platform.

Error shows up as:

```
> test
> ./bin/test-env-node

/usr/bin/env: 'node': Permission denied
```


## Key Features
- All tests pass on a local docker environment (Mac OSX)
- Test fails ONLY on GitHub Actions when:
  - running on ubuntu image (not debian)
  - shared volume is used and npm executes within (works fine without)
  - npm version is => 7.x (works fine with most recent 6.x)

Example of specifically failing CI run of [`test.sh`](./test.sh) scripts:
https://github.com/patcon/nvm-ubuntu-docker-test/runs/4612880756

## Usage

```bash
make setup
make test-all
```
