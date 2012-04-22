Zepto ->
  $('#mailchimp .submit').click ->
    $(@).parent().submit()
    event.preventDefault()
