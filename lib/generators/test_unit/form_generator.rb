module TestUnit
  module Generators
    class FormGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("templates", __dir__)
      check_class_collision suffix: "FormTest"

      def create_test_file
        template 'form_test.rb.tt', File.join('test/forms', class_path, "#{file_name}_form_test.rb")
      end

      private

        def file_name
          @_file_name ||= remove_possible_suffix(super)
        end

        def remove_possible_suffix(name)
          name.sub(/_?form$/i, "")
        end
    end
  end
end
