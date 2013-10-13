jQuery ->

  if controller("texts")

    if action("show")
      text = $("#page_title").text()
    else
      text = $(".breadcrumb a").last().text()

    switch text
      when "About us"                   then $("li#about_us").addClass("current")
      when "European Voluntary Service" then $("li#evs").addClass("current")
      when "Achievements"               then $("li#achievements").addClass("current")
      when "Testimonials"               then $("li#testimonials").addClass("current")
      when "Partners"                   then $("li#partners").addClass("current")
      when "Contact"                    then $("li#contact").addClass("current")
