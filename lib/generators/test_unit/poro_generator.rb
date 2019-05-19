module TestUnit
  module Generators
    class PoroGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("templates", __dir__)
      check_class_collision suffix: "Test"

      def create_test_file
        template 'model_test.rb.tt', File.join('test/models', class_path, "#{file_name}_test.rb")
      end
    end
  end
end
