# jQuery ->
#   # $('img[usemap]').rwdImageMaps()
#   xref =
#     plane: "Its a plane!"
#     house: "Its a house!"
#     boat: 'Its a boat!'
#   image = $('#world')
#   image.mapster
#     fillOpacity: 0.4
#     fillColor: 'd42e16'
#     stroke: true
#     strokeColor: '3320FF'
#     strokeOpacity: 0.8
#     strokeWidth: 4
#     singleSelect: true
#     mapKey: 'name'
#     listKey: 'name'
#     onClick: (e) ->
#       $('.modal').modal('show')
#       newToolTip = xref[e.key]
#       # update text depending on area selected
#       # $('#selections').html xref[e.key]
#       # if Asparagus selected, change the tooltip
#       image.mapster 'set_options', areas: [
#         {
#           key: 'plane'
#           toolTip: newToolTip
#         }
#         {
#           key: 'house'
#           toolTip: newToolTip
#         }
#       ]
#       return
#       showToolTip: true
#       toolTipClose: [
#         'tooltip-click'
#         'area-click'
#         'area-mouseout'
#       ]
#       areas: [
#         {
#           key: 'house'
#           fillColor: '000000'
#           toolTip: 'It\'s a house'
#         }
#         {
#           key: 'boat'
#           fillColor: '000000'
#           toolTip: 'It\'s a boat'
#         }
#         {
#           key: 'plane'
#           toolTip: 'It\'s a plane'
#         }
#       ]

