require "rest-segment/version"
require "httparty"
require "json"

module Segment
  class API
    include HTTParty
    
    @@api_endpoint = "https://api.segment.io/v2/"
    attr_accessor :api_key
    

    def initialize(api_key)
      @api_key = api_key
    end

    def post_with_api_key(method, params = {})
      post api_endpoint(method), params.merge({
        apiKey: self.api_key
      })
    end
        
  private
    def method_missing(m, *args, &block)
      args = args.unshift(m)
      send :post_with_api_key, *args
    end
    
    def api_endpoint(method)
      # add version if needed
      [@@api_endpoint, method.to_s].join
    end
    
    def post(url, params)
      self.class.post url, body: params.to_json, headers: {'Content-Type' => 'application/json'}
    end
  end
end

