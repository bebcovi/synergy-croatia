ActiveAdmin.setup do |config|

  config.site_title = "Synergy Croatia"

  config.namespace :admin do |admin|
    admin.build_menu do |menu|
      add_text = proc do |identifier, page, options = {}|
        text = Text.find(identifier)
        page.add options.reverse_merge(label: "Text", url: "/admin/texts/#{text.id}")
      end
      add_page_photo = proc do |identifier, page, options = {}|
        page_photo = PagePhoto.find(identifier)
        page.add options.reverse_merge(label: "Cover photo", url: "/admin/page_photos/#{page_photo.id}")
      end

      menu.add label: "News", priority: 1 do |page|
        add_page_photo.("pages/news", page, priority: 1)
        add_text.("pages/news", page, label: "Introduction", priority: 2)
      end

      menu.add label: "About us", priority: 2 do |page|
        add_page_photo.("pages/about", page, priority: 1)
        add_text.("pages/about", page, priority: 2)
      end

      menu.add label: "Trainings", priority: 3 do |page|
        add_page_photo.("pages/trainings", page, priority: 1)
        add_text.("pages/trainings", page, priority: 2)
      end

      menu.add label: "Projects", priority: 4 do |page|
        add_page_photo.("pages/projects", page, priority: 1)
        add_text.("pages/projects", page, priority: 2)
      end

      menu.add label: "Partnerships", priority: 5 do |page|
        add_page_photo.("pages/partnerships", page, priority: 1)
        add_text.("pages/partnerships", page, priority: 2)
      end

      menu.add label: "EVS", priority: 6 do |page|
        add_page_photo.("pages/evs", page, priority: 1)
        add_text.("pages/evs", page, priority: 2)
      end

      menu.add label: "Gallery", priority: 7

      menu.add label: "Contact", priority: 8 do |page|
        add_page_photo.("pages/contact", page, priority: 1)
        add_text.("pages/contact", page, priority: 2)
      end

      menu.add label: "Sidebar", priority: 9
    end
  end

  config.register_javascript "synergy-croatia_active_admin.js"

end
