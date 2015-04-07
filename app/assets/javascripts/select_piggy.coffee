jQuery ->
  check_if_bank_selected = ->
    if $('#user-info').data('location-chosen') == false
      $('.location').hide()
    else
      $('.piggy').hide()
      $('.location').show()
  check_if_bank_selected()

  $('.accept').on 'click', ->
    location = $(@).data('location-name')
    $.ajax
      type: 'POST'
      url: "/piggy_banks"
      dataType: "json"
      data: {"piggy_bank": {"location": location}}
      error: (jqXHR, textStatus, errorThrown) ->
        alert 'Dupa!'
      success: (data, textStatus, jqXHR) ->
        alert 'hura'
        $('#message').html('Explore')
        $('#user-info').data('location-chosen', true)
        $('.piggy').hide()
        $('.location').show()
    check_if_bank_selected()
