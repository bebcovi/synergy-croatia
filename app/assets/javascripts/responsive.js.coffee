do ($ = jQuery) ->

  App.Other.responsive =

    init: ->
      @configure()
      this.navigation()

    navigation: ->
      @config.$expander.on "click", =>
        if document.width < 960
          @config.$navigation.toggleClass("expanded")

    configure: ->
      @config =
        $expander:    $("#nav_expander")
        $navigation:  $(".site_navigation").find("ol")

  App.Other.responsive.init()
