module Rspec
  module Generators
    class FormGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("templates", __dir__)

      def create_test_file
        template 'form_spec.rb.tt', File.join('spec/forms', class_path, "#{file_name}_form_spec.rb")
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
