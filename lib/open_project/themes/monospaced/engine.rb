module OpenProject::Themes::Monospaced
  class Engine < ::Rails::Engine
    engine_name :openproject_themes_monospaced

    initializer 'themes.monospaced.register_themes' do
      ActiveSupport.on_load(:themes) do
        require 'open_project/themes/monospaced/all'
      end
    end

    config.to_prepare do
      require 'redmine/plugin'
      require 'open_project/themes/monospaced/version'

      Redmine::Plugin.register 'Monospaced-Theme' do
        name 'OpenProject Monospaced Themes'
        author 'OpenProject GmbH'
        description 'Custom dark theme for OpenProject'

        url 'https://github.com/davidmehren/openproject-theme-monospaced'
        author_url 'http://pixeltakt.net'

        version OpenProject::Themes::Monospaced::VERSION

        requires_openproject ">= 4.0.0"
      end
    end
  end
end
