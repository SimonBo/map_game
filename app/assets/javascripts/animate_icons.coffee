jQuery ->
  animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'
  animations = ['bounce', 'flash', 'pulse', 'rubberBand', 'shake', 'swing', 'tada', 'wobble']
  get_random_animation = ->
    animations[Math.floor(Math.random()*animations.length)];

  animate_icon = (icon) ->
    icon.addClass('animated ' + get_random_animation())

  deanimate_icon = (icon) ->
    animation_index = icon.prop('class').split(' ').indexOf('animated') + 1
    animation_to_remove = icon.prop('class').split(' ')[animation_index]
    icon.removeClass('animated ' + animation_to_remove )

  get_random_nr = (min, max) ->
    Math.floor(Math.random() * (max - min + 1)) + min

  $('.icon').each ->
    icon = $(@)
    setInterval ( ->
      animate_icon(icon)
      setTimeout ( ->
        deanimate_icon(icon)
      ), 1000
    ), get_random_nr(5000, 10000)