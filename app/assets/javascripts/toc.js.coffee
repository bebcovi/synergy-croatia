jQuery ->

  updateToc = =>

      $(".toc").find("li").each ->
        if $(@).find("a")[0].href == window.location.href
          $(@).addClass("active")
        else
          $(@).removeClass("active")

      $(".part").each ->
        if ($(@).attr("id") || "") == window.location.hash.substring(1)
          $(@).show()
        else
          $(@).hide()

  $(".toc").on "click", "a", (event) ->
    event.preventDefault()
    history.pushState(null, null, @href)
    updateToc()

  updateToc()

  if window.location.hash == "" and $(".part").first().attr("id")
    $(".part").first().show()
    $(".toc li").first().addClass("active")
