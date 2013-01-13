require "link_to_only_valid_path/version"
require "link_to_only_valid_path/helper"

#module LinkToOnlyValidPath
#end

ActiveSupport.on_load(:action_view) do
  include LinkToOnlyValidPath::Helper
end
