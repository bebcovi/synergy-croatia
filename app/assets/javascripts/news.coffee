SynergyCroatia.Initializers.news = ->
  $main       = $('[role=main]')
  $all        = $main.find 'article'
  $trainings  = $main.find '.training'
  $exchange   = $main.find '.exchange'

  $('#sub-nav').on 'click', 'a', (e) ->
    e.preventDefault()

    $('.active').removeClass 'active'
    $(@).addClass 'active'

    switch $(@).attr('href')
      when '#all'
        $all.show()
      when '#trainings'
        $exchange.hide()
        $trainings.show()
      when '#exchange'
        $trainings.hide()
        $exchange.show()
