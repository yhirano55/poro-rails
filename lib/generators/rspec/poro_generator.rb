module Rspec
  module Generators
    class PoroGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("templates", __dir__)

      def create_test_file
        template 'model_spec.rb.tt', File.join('spec/models', class_path, "#{file_name}_spec.rb")
      end
    end
  end
end
