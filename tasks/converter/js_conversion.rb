class Converter
  module JsConversion
    def process_javascript_assets
      log_status 'Processing javascripts...'
      save_to = @save_to[:js]
      contents = {}
      read_files('js', chroma_js_files).each do |name, file|
        contents[name] = file
        save_file("#{save_to}/#{name}", file)
      end
      log_processed "#{chroma_js_files * ' '}"

      log_status 'Updating javascript manifest'
      manifest = ''
      chroma_js_files.each do |name|
        name = name.gsub(/\.js$/, '')
        manifest << "//= require ./chroma/#{name}\n"
      end
      dist_js = read_files('dist/js', %w(chroma.js chroma.min.js))
      {
          'assets/javascripts/chroma.js'           => dist_js['chroma.js'],
          'assets/javascripts/chroma.min.js'       => dist_js['chroma.min.js'],
      }.each do |path, content|
        save_file path, content
        log_processed path
      end
    end

    def chroma_js_files
      @chroma_js_files ||= begin
        files = get_paths_by_type('js', /\.js$/).reject { |path| path =~ %r(^tests/) }
      end
    end
  end
end
