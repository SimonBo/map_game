jQuery ->
  $('.icon').on 'click', ->
    title = $(@).data('title')
    content = $(@).data('content')
    $('.modal-title').html(title)
    $('.modal-body').html(content)
    $('.modal').modal('show')
