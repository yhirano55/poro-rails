module Rails
  module Generators
    class ServiceGenerator < NamedBase
      source_root File.expand_path("templates", __dir__)
      check_class_collision suffix: "Service"

      def create_service
        template "service.rb.tt", File.join("app/services", class_path, "#{file_name}_service.rb")
      end

      hook_for :test_framework

      private

        def file_name
          @_file_name ||= remove_possible_suffix(super)
        end

        def remove_possible_suffix(name)
          name.sub(/_?service$/i, "")
        end
    end
  end
end
