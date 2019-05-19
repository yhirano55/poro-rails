module Poro
  class FormGenerator < Rails::Generators::NamedBase
    source_root File.expand_path("templates", __dir__)
    check_class_collision suffix: "Form"

    def create_form
      template "form.rb.tt", File.join("app/forms", class_path, "#{file_name}_form.rb")
    end

    hook_for :test_framework

    private

      def file_name
        @_file_name ||= remove_possible_suffix(super)
      end

      def remove_possible_suffix(name)
        name.sub(/_?form$/i, "")
      end
  end
end
