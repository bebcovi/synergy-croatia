SynergyCroatia.Initializers.admin = ->
  switch $('body').attr('class').split(' ')[1]

    when 'projects'

      $articles = $('[role=main] article')

      $articles.each ->
        $(@).on 'toggle:expand', ->
          $(@).find('.info, h2, p, .attachments').toggle()
          $(@).toggleClass('collapsed')

        $(@).find('.expand').on 'click', => $(@).trigger('toggle:expand')

      $articles.trigger 'toggle:expand'

    when 'testimonials'

      $blockquotes = $('blockquote')

      $blockquotes.each ->
        $(@).on 'toggle:expand', ->
          $(@).find('p').not($('cite').parent()).toggle()
          $(@).toggleClass('collapsed')

        $(@).find('.expand').on 'click', => $(@).trigger('toggle:expand')

      $blockquotes.trigger 'toggle:expand'
