SynergyCroatia.Initializers.responsive = ->
  if $('#expand').css('display') != 'none'
    $nav = $('nav')
    collapsed = true

    $nav.find('li').not(':has(.active)').hide()

    $nav.on 'expand', ->
      $nav.find('li').not(':has(.active)').toggle()
      collapsed = !collapsed

    $('#expand').on 'click', (e) ->
      e.preventDefault()
      $nav.trigger 'expand'

    $nav.on 'click', 'li a', (e) ->
      if collapsed or $(@).hasClass('active')
        e.preventDefault()
        $nav.trigger 'expand'
