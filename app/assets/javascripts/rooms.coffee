document.addEventListener 'turbolinks:load', ->
  App.room = App.cable.subscriptions.create { channel: "RoomChannel", room: $('#room_id').data('room_id'), guide_id: $('#current_guide_id').data('guide_id'), tourist_id: $('#current_tourist_id').data('tourist_id') },
    connected: ->


    disconnected: ->

    received: (data) ->
      $('#messages').append data["message"]


    speak: (message) ->
      @perform 'speak', message: message


  $('#chat-input').on 'keypress', (event) ->
    if event.keyCode is 13
      App.room.speak event.target.value
      event.target.value = ''
      event.preventDefault()