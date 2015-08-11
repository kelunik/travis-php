# Travis PHP Helper [![Build Status](https://travis-ci.org/kelunik/travis-php.svg?branch=master)](https://travis-ci.org/kelunik/travis-php)

This little repository helps testing on Travis CI with actual release version rather than nightly builds.

## Usage

```
language: php
php:
  - 5.6
  - 7.0
before_script:
  - git clone https://github.com/kelunik/travis-php && travis-php/install.sh $RELEASE
script:
  - phpunit
```

This will run your normal setup, but use the specified PHP pre-release build for the PHP 7 run.
Substitute `$RELEASE` by a version like `7.0.0alpha1` or `7.0.0beta2` or `latest` to always get the newest pre-release. Using a current master is also available, just use `master`. However, keep in mind that you still have to use `7` or `7.0` instead of `nightly` in your `.travis.yml` PHP release list.

## Builds

Available builds are hosted on [php.kelunik.com](http://php.kelunik.com). New versions will be added as they're released.

These builds are build on Ubuntu 12.04 for Travis, but they may work on other systems, too. If you want to try PHP 7 without building it yourself, just download and extract the archives and use `$VERSION/bin/php`.
