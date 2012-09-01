window.SynergyCroatia =
  Initializers: {}
  init: ->
    SynergyCroatia.Initializers.helper()
    SynergyCroatia.Initializers.responsive()

    switch $('body').attr('class').split(' ')[1]
      when 'volunteer' then SynergyCroatia.Initializers.volunteer()

jQuery ->
  SynergyCroatia.init()
