require 'rubygems'
require 'weary'

class Pat
  def self.get(code)
    (Weary.get "http://www.uk-postcodes.com/postcode/#{code.gsub(' ', '')}.json").perform
  end
end