# Travis PHP Helper

This little repository helps testing on Travis CI with actual release version rather than nightly builds.

## Usage

```
before_script:
  - git clone https://github.com/kelunik/travis-php && travis-php/install.sh 7.0.0beta1
```
