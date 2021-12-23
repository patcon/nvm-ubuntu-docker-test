# NPM + GitHub Actions + Docker error reproduction

The purpose of this repo is to try to reproduce a minimal example of an issue I'm seeing with NVM/NPM failing on fresh docker image, but exclusively on GitHub Actions platform.

Error shows up as:

```
> test
> ./bin/test-env-node

/usr/bin/env: 'node': Permission denied
```


## Key Features
- All tests pass on a local docker environment (Mac OSX)
- Test fails ONLY on GitHub Actions when:
  - running on latest ubuntu or debian image
  - shared volume is used and npm executes within (works fine without)
  - script is run within a `package.json` run-script (works fine from plain shell)
  - npm version is >= 7.x (works fine with latest 6.x release)

Example of specifically failing CI run of [`test.sh`](./test.sh) scripts:
https://github.com/patcon/nvm-ubuntu-docker-test/actions

## Usage

```bash
make setup
make test-all
```
