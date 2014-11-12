jQuery ->

  if controller("page_photos")

    $(".action_item").last().remove()

    if $("#cropbox").attr("src")? and $("#cropbox").attr("src") isnt ""

      updateCropInfo = (coordinates) ->
        $("#page_photo_crop_x").val(coordinates.x)
        $("#page_photo_crop_y").val(coordinates.y)
        $("#page_photo_crop_w").val(coordinates.w)
        $("#page_photo_crop_h").val(coordinates.h)

      aspectRatio = 640 / 88

      x = $("#page_photo_crop_x").val()
      y = $("#page_photo_crop_y").val()
      w = $("#page_photo_crop_w").val()
      h = $("#page_photo_crop_h").val()

      x1 = x
      y1 = y
      x2 = w
      y2 = y1 + h

      console.log [x1, y1, x2, y2]

      $("#cropbox").Jcrop
        aspectRatio: aspectRatio
        setSelect: [x1, y1, x2, y2]
        bgOpacity: .2
        onSelect: updateCropInfo
