module MyCashflow
  class Client
    include HTTParty

    def initialize(config = {})
      self.class.base_uri(config[:base])
      @path_parts = []
      @api_user = config[:user] || ENV['MYCASHFLOW_API_USER']
      @api_pass = config[:pass] || ENV['MYCASHFLOW_API_PASS']
      @api_base = config[:base] || ENV['MYCASHFLOW_API_BASE']
    end

    def method_missing(method, *args)
      puts args
      @path_parts << method.to_s.gsub('_', '-').downcase
      @path_parts << args if args.length > 0
      @path_parts.flatten!
      self
    end

    def request_options
      headers = {}
      headers[:accept] = 'application/json'
      headers[:basic_auth] = { username: @api_user, password: @api_pass }
      headers
    end

    def path
      @path_parts.join('/')
    end

    def reset
    end

    def get(params = {})
      reset
    end

    def create(params = {})
      reset
    end

    def update(params = {})
      reset
    end

    def delete(params = {})
      reset
    end
  end
end
