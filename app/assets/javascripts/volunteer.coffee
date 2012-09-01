SynergyCroatia.Initializers.volunteer = ->
  $field = $('#volunteer_interests')

  $field.hide()
  $('#other').on 'click', -> $field.toggle()
