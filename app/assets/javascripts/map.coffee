jQuery ->
  $('.icon').on 'click', ->
    title = $(@).data('title')
    content = $(@).data('content')
    $('#modal-character').show()
    $('.panel-default').show()
