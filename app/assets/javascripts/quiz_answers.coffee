jQuery ->
  $('.quiz').on 'click', ->
    title = $(@).data('title')
    content = $(@).data('content')
    reward = $(@).data('reward')
    answer_1 = $(@).data('answer-one')
    answer_2 = $(@).data('answer-two')
    answer_3 = $(@).data('answer-three')
    answer_4 = $(@).data('answer-four')

    $('#modal-character').fadeIn(1000)
    $('.challenge-type').html("<h1>Quiz</h1>")
    $('.challenge-title').html("<h2>#{title}</h2>")
    $('.challenge-rules').html("<h3>#{content}</h3>")
    $('.challenge-reward').html("<h4>#{reward}</h4>")
    $('#quiz-answer-1').html("<p class='quiz-answer'>#{answer_1}</p>")
    $('#quiz-answer-2').html("<p class='quiz-answer'>#{answer_2}</p>")
    $('#quiz-answer-3').html("<p class='quiz-answer'>#{answer_3}</p>")
    $('#quiz-answer-4').html("<p class='quiz-answer'>#{answer_4}</p>")
    $('.accept').data('location-name', $(@).data('title'))
    $('.bubble').fadeIn(2000)

    $('.quiz-answer').on 'click', ->
      if $(@).text() == $('.quiz').data('correct-answer')
        alert 'Correct!'
      else
        alert 'Wrong!'