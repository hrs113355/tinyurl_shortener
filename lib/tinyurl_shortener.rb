require 'rubygems'
require 'bundler/setup'
Bundler.require :default

class TinyurlShortener
  def self.shorten(long_url)
    RestClient.get 'http://tinyurl.com/api-create.php', {params: {url: long_url}}
  end
end

