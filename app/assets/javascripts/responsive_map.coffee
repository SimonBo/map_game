jQuery ->
  xref =
    plane: "Its a plane!"
    house: "Its a house!"
    boat: 'Its a boat!'
  resizeTime = 100
  # total duration of the resize effect, 0 is instant
  resizeDelay = 100
  # time to wait before checking the window size again
  # the shorter the time, the more reactive it will be.
  # short or 0 times could cause problems with old browsers.
  # Resize the map to fit within the boundaries provided

  resize = (maxWidth, maxHeight) ->
    image = $('img')
    imgWidth = image.width()
    imgHeight = image.height()
    newWidth = 0
    newHeight = 0
    if imgWidth / maxWidth > imgHeight / maxHeight
      newWidth = maxWidth
    else
      newHeight = maxHeight
    image.mapster 'resize', newWidth, newHeight, resizeTime
    return

  # Track window resizing events, but only actually call the map resize when the
  # window isn't being resized any more

  onWindowResize = ->
    curWidth = $(window).width()
    curHeight = $(window).height()
    checking = false
    if checking
      return
    checking = true
    window.setTimeout (->
      newWidth = $(window).width()
      newHeight = $(window).height()
      if newWidth == curWidth and newHeight == curHeight
        resize newWidth, newHeight
      checking = false
      return
    ), resizeDelay
    return

  $('img').mapster
    mapKey: 'name'
    onClick: (e) ->
      $('.modal-title').html xref[e.key]
      $('.modal-body').html 'Wanna try?'
      $('.modal').modal('show')

  $(window).bind 'resize', onWindowResize