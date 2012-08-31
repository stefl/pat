require 'rubygems'
require 'weary'

class PatClient < Weary::Client
  domain "http://www.uk-postcodes.com"
  
  get :get, "/postcode/{code}.json"
end

def Pat
  def self.get(code)
    PatClient.new.get(:code => code.gsub(' ', '').perform
  end
end
