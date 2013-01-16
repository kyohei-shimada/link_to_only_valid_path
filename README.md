# LinkToOnlyValidPath

## Installation

Add this line to your application's Gemfile:

    gem 'link_to_only_valid_path'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install link_to_only_valid_path

## Usage

In your views, you can use 'link_to_only_valid_path' helper. This helper is similar to 'link_to' helper.

    <%= link_to_only_valid_path name, url, options %>

This helper return a link tag if url is "http://...", "https://...", or valid routings (by default), otherwise this helper return name.

:examples

    <%= link_to_only_valid_path "Example1", "http://example.com" %>
      #=> <a href="http://example.com">Example1</a>
    <%= link_to_only_valid_path "Example2", "http://example.com" { :class => "btn" } %>
      #=> <a href="http://example.com" class="btn">Example2</a>
    <%= link_to_only_valid_path "Example3", disable_routing_path %>
      #=> "Example3"
    <%= link_to_only_valid_path enable_routing_path do %>
    	<div>innert element</div> 
    <% end %>
      #=> <a href="[enable_routing_path]"><div>inner element</div></a>
    <%= link_to_only_valid_path disable_routing_path %>
        <div>inner element</div>
    <% end %>
      #=> <div>inner element</div> # If the url disable, ignore a link tag.

If you want to enable other protocols, you set a :accepts_protocols option.

:examples

    <%= link_to_only_valid_path "FTP Example1", "ftp://example.com" %>
      #=> "FTP Example1"
    <%= link_to_only_valid_path "FTP Example2", "ftp://example.com", { :accept_protocols => [:ftp] } %>
      #=> <a href="ftp://example.com">FTP Example2</a>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
