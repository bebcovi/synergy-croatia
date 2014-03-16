ActiveAdmin.setup do |config|

  config.site_title = "Synergy Croatia"

  config.namespace :admin do |admin|
    admin.build_menu do |menu|
      add_text = proc do |text, page, options = {}|
        page.add label: options[:label] || "Text",
                 url: "/admin/texts/#{text.id}",
                 priority: options[:priority]
      end

      menu.add label: "News", priority: 1 do |page|
        add_text.(Text.find("pages/news"), page, label: "Introduction", priority: 1)
      end

      menu.add label: "About us", priority: 2 do |page|
        add_text.(Text.find("pages/about"), page, priority: 1)
      end

      menu.add label: "EVS", priority: 3 do |page|
        add_text.(Text.find("pages/evs"), page, priority: 1)
      end

      menu.add label: "Projects", priority: 4

      menu.add label: "Partners", priority: 5 do |page|
        add_text.(Text.find("pages/partners"), page, priority: 1)
      end

      menu.add label: "Gallery", priority: 6

      menu.add label: "Contact", priority: 7 do |page|
        add_text.(Text.find("pages/contact"), page, priority: 1)
      end

      menu.add label: "Sidebar", priority: 8
    end
  end

  config.register_javascript "synergy-croatia_active_admin.js"

end
