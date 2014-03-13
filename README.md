hammerstore
=========

[![Gem Version](https://img.shields.io/gem/v/hammerstore.svg)](https://rubygems.org/gems/hammerstore)
[![Dependency Status](https://img.shields.io/gemnasium/akerl/hammerstore.svg)](https://gemnasium.com/akerl/hammerstore)
[![Code Climate](https://img.shields.io/codeclimate/github/akerl/hammerstore.svg)](https://codeclimate.com/github/akerl/hammerstore)
[![Coverage Status](https://img.shields.io/coveralls/akerl/hammerstore.svg)](https://coveralls.io/r/akerl/hammerstore)
[![Build Status](https://img.shields.io/travis/akerl/hammerstore.svg)](https://travis-ci.org/akerl/hammerstore)
[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

[Hammerspace](https://github.com/airbnb/hammerspace) storage backend for [BasicCache](https://github.com/akerl/basiccache)

## Usage

```
require 'basiccache'
require 'hammerstore'

store = HammerStore.new('/path/to/hammerstore')
cache = BasicCache.new store
```

## Installation

    gem install hammerstore

## License

hammerstore is released under the MIT License. See the bundled LICENSE file for details.

