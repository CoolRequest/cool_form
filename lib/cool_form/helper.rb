module CoolForm
  module Helper
    def cool_form_with(**options, &block)
      form_with(**options.merge(builder: CoolForm::Builder), &block)
    end
  end
end