module LinkToOnlyValidPath
  module Helper
    def link_to_only_valid_path(*args, &block)
      if block_given?
        options = args.first || {}
        puts options
        html_options = args.second
        puts html_options
        link_to_only_valid_path(capture(&block), options, html_options)
      elsif args.second =~ /^(http:\/\/|https:\/\/)/
        return link_to(*args)
      else
        all_routes = eval(Rails.application.class.parent_name)::Application.routes.routes
        return link_to_if(all_routes.map{ |route| route.path.match(args.second).present? }.include?(true), *args)
      end
    end
  end
end
