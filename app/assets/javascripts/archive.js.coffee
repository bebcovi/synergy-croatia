do ($ = jQuery) ->

  App.Controllers.archive =

    init: ->
      self = this

      self.configure()

      self.config.$filter.on "click", "a", (event) ->
        $this = $(@)

        event.preventDefault()

        if $this.hasClass("active")
          $this.toggleClass("active")
        else
          self.config.$filterLinks.removeClass("active")
          $this.addClass("active")

        switch $this.attr("href")
          when "#all"
            self.config.$all.show()
          when "#projects"
            self.config.$exchange.hide()
            self.config.$trainings.show()
          when "#partnerships"
            self.config.$trainings.hide()
            self.config.$exchange.show()

    configure: ->
      self = this

      $main = $(".main_content")

      self.config =
        $filter:        $(".filter")
        $filterLinks:   $(".filter").find("a")

        $all:           $main.find("article")
        $projects:      $main.find(".project")
        $partnerships:  $main.find(".partnership")
