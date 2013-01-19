require "faraday"
require "faraday_middleware"

module DNSimple
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
  end

  def self.client
    Client.new(configuration.email, configuration.token)
  end

  class Configuration
    attr_accessor :email, :token
  end

  class Client < Faraday::Connection
    def initialize(email, token)
      @email = email
      @token = token

      url = "https://dnsimple.com/domains/synergy-croatia.com"

      super(url) do |b|
        b.use FaradayMiddleware::ParseJson

        b.adapter :net_http
      end
    end

    [:get, :post, :put, :delete].each do |http_method|
      define_method(http_method) do |path, params = {}, &block|
        set_headers

        response = super(path) do |req|
          req.params = params
          yield req if block_given?
        end

        response.body
      end
    end

    private

    def set_headers
      headers["X-DNSimple-Token"] = "#{@email}:#{@token}"
      headers["Accept"] = "application/json"
    end
  end
end

DNSimple.configure do |config|
  config.email = ENV["DNSIMPLE_EMAIL"]
  config.token = ENV["DNSIMPLE_TOKEN"]
end
