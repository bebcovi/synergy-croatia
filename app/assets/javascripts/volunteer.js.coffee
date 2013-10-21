jQuery ->

  if App.action == "volunteer"

    module =

      init: ->
        self = this
        self.configure()
        self.config.$checkbox.on "click", ->
          self.config.$field.toggle()

      configure: ->
        self = this

        self.config =
          $checkbox:  $("#other")
          $field:     $(".other_interests")

    module.init()
