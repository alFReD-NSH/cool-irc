window.Messages = new Meteor.Collection('messages')

Template.chatTemplate.messages = ->
    Messages.find()

$ ->
    $('#enter').submit( ->
        Meteor.subscribe('channel', $('#channel').val(), $('#user').val())
    )
