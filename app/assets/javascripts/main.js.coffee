do ($ = jQuery) ->

  controllerAction = $("body").attr("class").split(" ")

  window.App =
    Controllers:  {}
    Other:        {}
    Info:
      controller: controllerAction[1]
      action:     controllerAction[0]
