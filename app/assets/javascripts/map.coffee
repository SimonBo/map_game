jQuery ->
  $('.icon').on 'click', ->
    title = $(@).data('title')
    content = $(@).data('content')
    $('#modal-character').fadeIn(1000)
    $('.challenge-title').html(title)
    $('.challenge-rules').html(content)
    $('.bubble').fadeIn(3000)
