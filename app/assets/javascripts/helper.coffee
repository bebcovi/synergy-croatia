SynergyCroatia.Initializers.helper = ->
  $('article > p').each ->
    if $(@).find('img').length > 0
      $(@).addClass 'img'
