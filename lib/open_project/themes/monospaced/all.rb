require 'open_project/themes/theme'

module OpenProject::Themes::Monospaced
  class MonospacedTheme < OpenProject::Themes::Theme
    def assets_path
      OpenProject::Themes::Monospaced.assets_path
    end
  end
end
