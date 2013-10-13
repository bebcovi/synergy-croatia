jQuery ->

  if controller("texts")

    if action("show")
      text = $("#page_title").text()
    else
      text = $(".breadcrumb a").last().text()

    switch text
      when "About us"                   then $("li#about_us").addClass("current")
      when "European Voluntary Service" then $("li#evs").addClass("current")
      when "Contact"                    then $("li#contact").addClass("current")
