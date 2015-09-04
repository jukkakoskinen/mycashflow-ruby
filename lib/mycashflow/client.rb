module MyCashflow
  class Client
    include HTTParty

    def initialize(config = {})
      @path_parts = []
      @username = config[:username] || ENV['MYCASHFLOW_USERNAME']
      @password = config[:password] || ENV['MYCASHFLOW_PASSWORD']
      @base_url = config[:base_url] || ENV['MYCASHFLOW_BASE_URL']

      self.class.base_uri(@base_url)
      self.class.headers({ 'Accept' => 'application/json' })
      self.class.basic_auth(@username, @password)
    end

    def method_missing(method, *args)
      @path_parts << method.to_s.gsub('_', '-').downcase
      @path_parts << args if args.length > 0
      @path_parts.flatten!
      self
    end

    def path
      "/#{@path_parts.join('/')}"
    end

    def reset
      @path_parts = []
    end

    def get(params = {})
      self.class.get(path)
    ensure
      reset
    end

    def create(params = {})
      self.class.create(path, params)
    ensure
      reset
    end

    def update(params = {})
      self.class.update(path, params)
    ensure
      reset
    end

    def delete(params = {})
      self.class.delete(path, params)
    ensure
      reset
    end
  end
end
