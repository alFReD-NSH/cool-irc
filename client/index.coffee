window.Messages = new Meteor.Collection('messages')

Template.chatTemplate.messages = ->
    Messages.find()

$ ->
    $('#enter').submit( (e) ->
        e.preventDefault()
        Meteor.subscribe('channel', $('#channel').val(), $('#user').val())
    )
