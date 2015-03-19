module Chroma
  module Rails
    class Engine < ::Rails::Engine
      initializer 'chroma-js.assets.precompile' do |app|
        %w(javascripts).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
