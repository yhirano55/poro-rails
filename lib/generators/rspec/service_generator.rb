module Rspec
  module Generators
    class ServiceGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("templates", __dir__)

      def create_test_file
        template 'service_spec.rb.tt', File.join('spec/services', class_path, "#{file_name}_service_spec.rb")
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
