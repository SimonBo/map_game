
jQuery ->
  $('[data-toggle="tooltip"]').tooltip()
  hide_modals= ->
    $('#modal-character').fadeOut(1000)
    $('.bubble').fadeOut(1000)

  $('.icon').on 'click', ->
    title = $(@).data('title')
    content = $(@).data('content')
    reward = $(@).data('reward')
    $('#modal-character').fadeIn(1000)
    $('.challenge-title').html("<h2>#{title}</h2>")
    $('.challenge-rules').html("<h3>#{content}</h3>")
    $('.challenge-reward').html("<h4>#{reward}</h4>")
    $('.bubble').fadeIn(2000)

  $('.accept').on 'click', ->
    hide_modals()
  $('.reject').on 'click', ->
    hide_modals()