# Travis PHP Helper

This little repository helps testing on Travis CI with actual release version rather than nightly builds.

## Usage

```
language: php
php:
  - 5.6
  - 7
before_script:
  - git clone https://github.com/kelunik/travis-php && travis-php/install.sh 7.0.0beta1
script:
  - phpunit
```

This will run your normal setup, but use the specified PHP pre-release build for the PHP 7 run.

# Builds

Available builds are hosted on [php.kelunik.com](http://php.kelunik.com). New versions will be added as they're released.

These builds are build on Ubuntu 12.04 for Travis, but they may work on other systems too. If you want to try PHP 7 without building it yourself, just download and extract the archives and use `$VERSION/bin/php`.
