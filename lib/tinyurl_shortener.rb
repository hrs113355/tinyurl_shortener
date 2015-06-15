require 'rubygems'
require 'restclient'
require 'bundler/setup'
Bundler.require :default

class TinyurlShortener
  def self.shorten(long_url)
    RestClient.get 'http://tinyurl.com/api-create.php', {params: {url: long_url}}
  end

  def self.expand(short_url)
    response = RestClient.get(short_url)

    # there are some ways that tinyurl redirects
    #   * using 301 location redirection
    #   * using content refresh redirection
    #
    #   when we cannot detect the redirecting way, use current url for results
    if response.history.first && response.history.first.headers
      response.history.first.headers[:location]
    elsif ! (match = response.body.response.body.scan(/content=\\"1; url=(.*?)\\"/)).empty?
      match.last.first
    else
      response.request.url
    end
  end
end

