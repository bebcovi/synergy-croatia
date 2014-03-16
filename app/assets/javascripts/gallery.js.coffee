jQuery ->

  $(".album_photos").find("a")
    .attr("rel", "gallery")
    .fancybox
      openEffect: "elastic"
      closeEffect: "none"
      nextEffect: "fade"
      prevEffect: "fade"
