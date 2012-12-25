do ($ = jQuery) ->

  App.Controllers.news =

    init: ->
      self = this

      self.configure()

      self.config.$subNav.on "click", "a", (event) ->
        $this = $(@)

        event.preventDefault()

        if $this.hasClass("active")
          $this.toggleClass("active")
        else
          self.config.$subNavLinks.removeClass("active")
          $this.addClass("active")

        switch $this.attr("href")
          when "#all"
            self.config.$all.show()
          when "#trainings"
            self.config.$exchange.hide()
            self.config.$trainings.show()
          when "#exchange"
            self.config.$trainings.hide()
            self.config.$exchange.show()

    configure: ->
      self = this

      $main = $(".main_content")

      self.config =
        $subNav:      $(".sub_navigation")
        $subNavLinks: $(".sub_navigation").find("a")

        $all:         $main.find("article")
        $trainings:   $main.find(".training")
        $exchange:    $main.find(".exchange")
