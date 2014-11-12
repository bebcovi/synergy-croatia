require "activeadmin"
require_relative "markdown_rendering"

ActiveAdmin.setup do |config|
  config.site_title_link = "/"
  config.root_to = 'posts#index'

  config.authentication_method = :authenticate_user!
  config.current_user_method = :current_user
  config.logout_link_path = :destroy_user_session_path

  config.allow_comments = false
  config.batch_actions = true
  config.download_links = false

  config.namespace :admin do |admin|
    admin.build_menu :utility_navigation do |menu|
      menu.add label: "Markdown", url: "/admin/markdown"
      admin.add_logout_button_to_menu menu
    end
  end
end

Arbre::Element.send(:include, MarkdownRendering)

module ActiveAdmin
  module Views
    module Pages
      class Show

        def locale_attributes(*attributes)
          %i[en hr].each do |locale|
            h1 { {en: "English", hr: "Croatian"}[locale] }

            attributes_table do
              I18n.with_locale(locale) do
                attributes.each do |attribute|
                  row attribute
                end
              end
            end
          end
        end

      end
    end
  end
end
