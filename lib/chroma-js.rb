require 'chroma-js/version'
module Chroma
  class << self
    # Based on bootstrap-sass
    def load!
      if rails?
        register_rails_engine
      elsif sprockets?
        register_sprockets
      end
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def javascripts_path
      File.join assets_path, 'javascripts'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    # Environment detection helpers
    def sprockets?
      defined?(::Sprockets)
    end

    def rails?
      defined?(::Rails)
    end

    private

    def register_rails_engine
      require 'chroma-js/engine'
    end

    def register_sprockets
      Sprockets.append_path(javascripts_path)
    end
  end
end

Chroma.load!
