SynergyCroatia.Initializers.responsive = ->
  $nav      = $('nav')
  $expand   = $('#expand')
  mobile    = $expand.css('display') != 'none'
  expanded  = true

  $(window).on 'resize', ->
    mobile = $expand.css('display') != 'none'
    if mobile
      if !$nav.hasClass 'mobile'
        $nav.trigger 'toggle:expand'
        $nav.addClass 'mobile'
    else
      $nav.trigger('toggle:expand') if !expanded
      $nav.find('li').removeAttr('style')
      $nav.removeClass 'mobile'

  $nav.on 'toggle:expand', ->
    $nav.find('li').not(':has(.active)').toggle()
    expanded = !expanded

  $('#expand').on 'click', (e) ->
    e.preventDefault()
    $nav.trigger 'toggle:expand'

  $nav.on 'click', 'li a', (e) ->
    if !expanded or $(@).hasClass('active')
      e.preventDefault()
      $nav.trigger 'toggle:expand'

  $nav.trigger('toggle:expand') if mobile
