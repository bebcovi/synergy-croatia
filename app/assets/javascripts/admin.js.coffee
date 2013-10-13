jQuery ->

  App.Controllers.admin =

    init: ->
      @configure()
      this[App.actionName]?()

    projects: ->
      @config.$articles.each ->
        $this = $(@)

        $this.on "toggle:expand", ->
          $this.find(".info, h2, p, .attachments").toggle()
          $this.toggleClass("collapsed")

        $this.find(".expand").on "click", =>
          $this.trigger("toggle:expand")

      @config.$articles.trigger "toggle:expand"

    testimonials: ->
      @config.$blockquotes.each ->
        $this = $(@)

        $this.on "toggle:expand", ->
          $this.find("p").not($("cite").parent()).toggle()
          $this.toggleClass("collapsed")

        $this.find(".expand").on "click", =>
          $this.trigger("toggle:expand")

      @config.$blockquotes.trigger "toggle:expand"

    configure: ->
      @config =
        $articles:    $(".main_content").find("article")
        $blockquotes: $("blockquote")
