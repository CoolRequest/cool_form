module CoolForm

  class Builder < ActionView::Helpers::FormBuilder
    def input(field, as: :string, **input_args)
      component_class = get_component(as)
      component = component_class.new(form: self, field: field, **input_args)

      ActionController::Base.render(component)
    end

    private

    # TODO: change this to ActiveSupport::Configurable
    def config
      { 
        default_components: {
          string: CoolForm::Components::Input,
          text: CoolForm::Components::TextArea,
          select: CoolForm::Components::Select
        }
      }
    end

    def get_component(as)
      klass = config[:default_components][as]
      raise "Component not found: #{as}" unless klass

      klass
    end

  end
end