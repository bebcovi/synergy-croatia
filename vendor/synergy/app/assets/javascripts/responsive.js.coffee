jQuery ($) ->

  module =

    init: ->
      self = this

      self.configure()
      self.navigation()

    navigation: ->
      self = this
      self.config.$navExpander.on "click", =>
        self.config.$navigation.toggleClass("expanded")

      self.config.$subNavExpander.on "click", =>
        self.config.$subNavigation.toggleClass("expanded")

    configure: ->
      self = this
      $navigation = $(".site_navigation")
      $subNavigation = $(".site_sub_navigation")

      self.config =
        $navigation:      $navigation.find("ol")
        $navExpander:     $navigation.find(".nav_expander")

        $subNavigation:   $subNavigation.find("ol")
        $subNavExpander:  $subNavigation.find(".nav_expander")


  module.init()
