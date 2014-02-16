require 'json'
require 'cgi'
require 'faraday'

require "street_smarts/version"
require "street_smarts/api_resource"
require "street_smarts/address"

module StreetSmarts
  @api_base = 'https://api.smartystreets.com'

  class << self
    attr_accessor :auth_id, :auth_token
  end
end
