module CoolForm
  class ConfigGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_initializer_file
      copy_file "cool_form.rb", "config/initializers/cool_form.rb"
    end

  end
end