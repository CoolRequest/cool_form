module CoolForm
  module Components
    class Select < Input

      def initialize(**args)
        @form = args.delete(:form)
        @field = args.delete(:field)
        @choices = args.delete(:collection)
        @input_args = args
      end

    end
  end
end