require "cool_form/version"
require "cool_form/railtie"
require "cool_form/helper"
require "cool_form/builder"
require "cool_form/components/input"
require "cool_form/components/select"
require "cool_form/components/text_area"

module CoolForm
  # Your code goes here...
  include ActiveSupport::Configurable
end

ActiveSupport.on_load(:action_view) do
  include CoolForm::Helper
end
