module OpenProject
  module Themes
    module Monospaced
      require 'open_project/themes/monospaced/engine'

      def self.assets_path
        @assets_path ||= Engine.root.join('app/assets').to_s
      end
    end
  end
end
