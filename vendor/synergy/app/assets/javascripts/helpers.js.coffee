jQuery ($) ->

  module =

    init: ->
      self = this

      self.imgClass()
      self.targetBlank()

    imgClass: ->
      self = this
      $("article > p").each ->
        $this = $(@)
        if $this.find("img").length
          $this.addClass "img"

    targetBlank: ->
      self = this
      $("a").each ->
        $this = $(@)
        if not ~$this.attr("href").search(/^(#|\/)/)
          $this.attr "target", "_blank"


  module.init()
