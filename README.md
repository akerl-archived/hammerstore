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

### Dependencies

#### sparkey

You'll need to have [sparkey](https://github.com/spotify/sparkey) installed in order to install the dependencies for hammerstore. To do this on Debian/Ubuntu, run the following:

```
apt-get install libsnappy-dev
git clone git://github.com/spotify/sparkey.git
cd sparkey
autoreconf --install
./configure --prefix=/usr
make
make install
```

To do this on a Mac, run the following:

```
brew install https://raw.githubusercontent.com/akerl/homebrew-formulae/master/sparkey.rb
```

### Hammerstore

Now install hammerstore itself:

    gem install hammerstore

## License

hammerstore is released under the MIT License. See the bundled LICENSE file for details.

