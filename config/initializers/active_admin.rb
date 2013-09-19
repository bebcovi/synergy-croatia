ActiveAdmin.setup do |config|

  # == Site Title
  #
  # Set the title that is displayed on the main layout
  # for each of the active admin pages.
  #
  config.site_title = "Synergy Croatia"


  # == Controller Filters
  #
  # You can add before, after and around filters to all of your
  # Active Admin resources and pages from here.
  #
  # config.before_filter :do_something_awesome


  config.namespace :admin do |admin|
    admin.build_menu do |menu|
      add_text = proc do |text, page, options = {}|
        page.add label: options[:label] || "Text",
                 url: "/admin/texts/#{text.id}",
                 priority: options[:priority]
      end

      menu.add label: "Upcoming", priority: 1

      menu.add label: "About us", priority: 2 do |page|
        add_text.(Text.find("pages/about"), page, priority: 1)
      end

      menu.add label: "EVS", priority: 3 do |page|
        add_text.(Text.find("pages/evs"), page, priority: 1)
      end

      menu.add label: "Achievments", priority: 4 do |page|
        add_text.(Text.find("pages/archive"), page, priority: 1)
      end

      menu.add label: "Testimonials", priority: 5

      menu.add label: "Partners", priority: 6

      menu.add label: "Contact", priority: 7 do |page|
        add_text.(Text.find("pages/contact"), page, priority: 1)
      end

      menu.add label: "Sidebar", priority: 8
    end
  end

end
