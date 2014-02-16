require "street_smarts/version"

module StreetSmarts
  @api_base = 'https://api.smartystreets.com'

  class << self
    attr_accessor :auth_id, :auth_token
  end
end
