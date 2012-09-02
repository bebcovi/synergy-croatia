window.SynergyCroatia =
  Initializers: {}
  init: ->
    SynergyCroatia.Initializers.helper()
    SynergyCroatia.Initializers.responsive()

    switch $('body').attr('class').split(' ')[1]
      when 'news'       then SynergyCroatia.Initializers.news()
      when 'volunteer'  then SynergyCroatia.Initializers.volunteer()

    SynergyCroatia.Initializers.admin() if $('body').hasClass('admin')

jQuery ->
  SynergyCroatia.init()
