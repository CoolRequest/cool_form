module CoolForm

  class Builder < ActionView::Helpers::FormBuilder
    def input(field, as: :string, **input_args)
      component_class = get_component(as)
      component = component_class.new(form: self, field: field, **input_args)

      ActionController::Base.render(component)
    end

    private

    def get_component(as)
      mapping = CoolForm.config.component_mappings
      klass = mapping[as].constantize
      raise "Component not found: #{as}" unless klass

      klass
    end

  end
end