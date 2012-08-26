window.SynergyCroatia =
  Initializers: {}
  init: ->
    SynergyCroatia.Initializers.helper()
    SynergyCroatia.Initializers.responsive()

    # switch $('body').attr('class').split(' ')[1]
    #   when '' then

jQuery ->
  SynergyCroatia.init()
