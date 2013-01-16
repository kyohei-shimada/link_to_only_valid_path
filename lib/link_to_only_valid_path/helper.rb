module LinkToOnlyValidPath
  module Helper
    def link_to_only_valid_path(*args, &block)
      if block_given?
        options = args.first || {}
        html_options = args.second
        link_to_only_valid_path(capture(&block), options, html_options)
      else
        accepts = ['http', 'https']
        if args[2]
          args[2].stringify_keys!
          if args[2].key?('accept_protocols')
            accepts = args[2]['accept_protocols'].map{ |protocol| protocol.to_s }
            args[2].delete('accept_protocols')
          end
        end
        return link_to_if(valid_path?(args.second, accepts), *args)
      end
    end

    private
    def valid_path?(path, accept_protocols)
      accept_protocols.each do |protocol|
        if path =~ /^#{protocol}:\/\//
          return true
        end
      end

      all_routes = eval(Rails.application.class.parent_name)::Application.routes.routes
      return all_routes.map{ |route| route.path.match(path).present? }.include?(true)
    end
  end
end
