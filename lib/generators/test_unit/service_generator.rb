module TestUnit
  module Generators
    class ServiceGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("templates", __dir__)
      check_class_collision suffix: "ServiceTest"

      def create_test_file
        template 'service_test.rb.tt', File.join('test/services', class_path, "#{file_name}_service_test.rb")
      end

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
