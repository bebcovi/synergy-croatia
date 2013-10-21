jQuery ($) ->

  # if App.action == "archive"

  #   module =

  #     init: ->
  #       self = this

  #       self.configure()
  #       self.filter()

  #     filter: ->
  #       self = this
  #       self.config.$filter.on "click", "a", (event) ->
  #         event.preventDefault()
  #         $this = $(@)

  #         if $this.hasClass("active")
  #           $this.toggleClass("active")
  #         else
  #           self.config.$filterLinks.removeClass("active")
  #           $this.addClass("active")

  #         switch $this.attr("href")
  #           when "#all"
  #             self.config.$all.show()
  #           when "#projects"
  #             self.config.$exchange.hide()
  #             self.config.$trainings.show()
  #           when "#partnerships"
  #             self.config.$trainings.hide()
  #             self.config.$exchange.show()

  #     configure: ->
  #       self = this

  #       $main = $(".main_content")
  #       $filter = $(".filter")

  #       self.config =
  #         $filter:        $filter
  #         $filterLinks:   $filter.find("a")

  #         $all:           $main.find("article")
  #         $projects:      $main.find(".project")
  #         $partnerships:  $main.find(".partnership")


  #   module.init()
