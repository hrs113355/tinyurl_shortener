require 'spec_helper'

describe TinyurlShortener do
  describe ".shorten" do
    it "shortens long url by tinyurl.com" do
      TinyurlShortener.shorten("https://github.com/hrs113355/tinyurl_shortener").should == "http://tinyurl.com/oybhnsm"
    end
  end

  describe ".expand" do
    it "expands short tinyurl to original long url" do
      TinyurlShortener.expand("http://tinyurl.com/oybhnsm").should == "https://github.com/hrs113355/tinyurl_shortener"
    end
  end
end
