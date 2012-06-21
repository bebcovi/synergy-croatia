Zepto ->
  $width = $('<div id="screen-width">')
  $('body').prepend $width
  $width.text $('html').width() / 18
  $width.hide()
  $(document).on 'keyup', (e) ->
    if e.which == 17
      $width.toggle()
  $(window).resize ->
    $width.text $('html').width() / 18
