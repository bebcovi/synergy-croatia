do ($ = jQuery) ->

  App.Other.helper =

    init: ->
      self = this

      self.imgClass()
      self.targetBlank()

    imgClass: ->
      $("article > p").each ->
        $this = $(@)
        if $this.find("img").length
          $this.addClass "img"

    targetBlank: ->
      $("a").each ->
        $this = $(@)
        if not ~$this.attr("href").search(/^(#|\/)/)
          $this.attr "target", "_blank"

  App.Other.helper.init()
