module StreetSmarts
  class APIResource
    def self.post(resource)
      conn = Faraday.new(:url => 'https://api.smartystreets.com') do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end

      response = conn.post do |req|
        req.url '/streetaddress'
        req.params['auth-id'] = auth_id
        req.params['auth-token'] = auth_token
        req.headers['Content-Type'] = 'application/json'
        req.body = address.to_json
      end
    end
  end
end
