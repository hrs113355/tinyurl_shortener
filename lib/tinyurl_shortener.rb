require 'rubygems'
require 'restclient'
require 'bundler/setup'
Bundler.require :default

class TinyurlShortener
  def self.shorten(long_url)
    RestClient.get 'http://tinyurl.com/api-create.php', {params: {url: long_url}}
  end

  def self.expand(short_url)

    # there are some ways that tinyurl redirects
    #   * using 301 location redirection
    #   * using content refresh redirection
    #
    #   when we cannot detect the redirecting way, use current url for results
    RestClient.get(short_url) do |response, request, result, &block|
      if [301, 302, 307].include? response.code
        return response.headers[:location]
      elsif ! (match = response.body.scan(/content="1; url=(.*?)"/)).empty?
        return match.last.first
      else
        response.request.url
      end
    end
  end
end

