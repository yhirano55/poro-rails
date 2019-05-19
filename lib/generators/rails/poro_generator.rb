module Rails
  module Generators
    class PoroGenerator < NamedBase
      source_root File.expand_path("templates", __dir__)

      def create_model
        template "model.rb.tt", File.join("app/models", class_path, "#{file_name}.rb")
      end

      hook_for :test_framework
    end
  end
end
