SynergyCroatia.Initializers.helper = ->
  $('article > p').each ->
    if $(@).find('img').length > 0
      $(@).addClass 'img'

  $('a').each ->
    if $(@).attr('href').search(/^(#|\/$|\/\w)/) == - 1
      $(@).attr 'target', '_blank'
