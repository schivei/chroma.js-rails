description 'Chroma JS'

# Copy JS
manifest = Pathname.new(File.dirname(__FILE__))
assets   = File.expand_path('../../assets', manifest)
{:javascript => 'javascripts' }.each do |method, dir|
  root = Pathname.new(assets).join(dir)
  Dir.glob root.join('**', '*.*') do |path|
    path = Pathname.new(path)
    send method, path.relative_path_from(manifest).to_s, :to => path.relative_path_from(root).to_s
  end
end
