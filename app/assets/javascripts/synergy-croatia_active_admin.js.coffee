jQuery ->

  if controller("texts") or controller("page_photos")

    if action("show")
      text = $("#page_title").text()
    else
      text = $(".breadcrumb a").last().text()

    switch text
      when "News"         then $("li#news").addClass("current")
      when "About us"     then $("li#about_us").addClass("current")
      when "EVS"          then $("li#evs").addClass("current")
      when "Achievements" then $("li#achievements").addClass("current")
      when "Testimonials" then $("li#testimonials").addClass("current")
      when "Partners"     then $("li#partners").addClass("current")
      when "Contact"      then $("li#contact").addClass("current")
