# TinyurlShortener  
  
[![Gem Version](https://badge.fury.io/rb/tinyurl_shortener.svg)](http://badge.fury.io/rb/tinyurl_shortener)
[![Build Status](https://travis-ci.org/hrs113355/tinyurl_shortener.svg?branch=master)](https://travis-ci.org/hrs113355/tinyurl_shortener)

URL shortener with tinyurl.com service.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tinyurl_shortener'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tinyurl_shortener

## Usage

```ruby
TinyurlShortener.shorten("https://github.com/hrs113355/tinyurl_shortener")
=> "http://tinyurl.com/oybhnsm"

TinyurlShortener.expand("http://tinyurl.com/oybhnsm")
=> "https://github.com/hrs113355/tinyurl_shortener"
```

## Changes

* 1.0.1 - fix issue of detecting url redirection when expanding tinyurl
* 1.0.2 - relax rest-client dependency
* 1.0.3 - update rest-client dependency. drop support for ruby version < 2.0.0.
