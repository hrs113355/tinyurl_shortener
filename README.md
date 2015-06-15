# TinyurlShortener

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

